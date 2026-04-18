#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# run_tests.sh — Orchestre les différentes suites de tests et génère un
# rapport HTML unifié dans test-reports/<timestamp>/
#
# Modes disponibles (passés en 1er argument) :
#   --simple    Tests unitaires + intégration (Vitest) uniquement
#   --ui        Tests E2E + a11y (Playwright), HORS suite "results"
#   --classic   Vitest + Playwright (hors "results")  [mode par défaut]
#   --results   Uniquement la suite "results" (round-trip saisie ↔ DB)
#   --full      TOUT : Vitest + Playwright (classique) + Playwright "results"
#
# La suite "results" soumet un formulaire complet puis vérifie la restitution
# en base. Elle est plus lente et modifie la DB de dev (ajoute des réponses).
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

MODE="${1:---classic}"
case "$MODE" in
  --simple|--ui|--classic|--results|--full) ;;
  -h|--help)
    grep '^# ' "$0" | sed 's/^# //'
    exit 0
    ;;
  *)
    echo "Mode inconnu : $MODE" >&2
    echo "Usage : $0 [--simple|--ui|--classic|--results|--full]" >&2
    exit 2
    ;;
esac

RUN_UNIT=0
RUN_E2E_CLASSIC=0
RUN_E2E_RESULTS=0
case "$MODE" in
  --simple)  RUN_UNIT=1 ;;
  --ui)      RUN_E2E_CLASSIC=1 ;;
  --classic) RUN_UNIT=1; RUN_E2E_CLASSIC=1 ;;
  --results) RUN_E2E_RESULTS=1 ;;
  --full)    RUN_UNIT=1; RUN_E2E_CLASSIC=1; RUN_E2E_RESULTS=1 ;;
esac

TIMESTAMP=$(date +%Y-%m-%dT%H-%M-%S)
REPORT_DIR="./test-reports/${TIMESTAMP}"
mkdir -p "${REPORT_DIR}"

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

UNIT_OK=1            # 1 = OK (ou non exécuté), 0 = échec
E2E_OK=1
RESULTS_OK=1
UNIT_JSON="${REPORT_DIR}/vitest-results.json"
E2E_JSON="${REPORT_DIR}/playwright-results.json"
RESULTS_JSON="${REPORT_DIR}/playwright-results-suite.json"
SUMMARY_HTML="${REPORT_DIR}/index.html"

# ─────────────────────────────────────────────────────────────────────────────
# 1. Tests unitaires (Vitest)
# ─────────────────────────────────────────────────────────────────────────────
if [ "$RUN_UNIT" = "1" ]; then
  echo -e "\n${CYAN}${BOLD}▶ Tests unitaires + intégration (Vitest)${NC}\n"
  if npx vitest run --reporter=verbose --reporter=json --outputFile="${UNIT_JSON}" 2>&1 | tee "${REPORT_DIR}/vitest.log"; then
    echo -e "\n${GREEN}✔ Vitest : OK${NC}"
  else
    UNIT_OK=0
    echo -e "\n${RED}✘ Vitest : ÉCHECS${NC}"
  fi
fi

# ─────────────────────────────────────────────────────────────────────────────
# 2. Tests E2E classiques (Playwright, hors @results)
# ─────────────────────────────────────────────────────────────────────────────
if [ "$RUN_E2E_CLASSIC" = "1" ]; then
  echo -e "\n${CYAN}${BOLD}▶ Tests E2E + a11y (Playwright)${NC}\n"
  if PLAYWRIGHT_JSON_OUTPUT_FILE="${E2E_JSON}" \
     npx playwright test \
       --grep-invert "@results" \
       --reporter=list,json,html \
       --output="${REPORT_DIR}/artifacts" 2>&1 | tee "${REPORT_DIR}/playwright.log"; then
    echo -e "\n${GREEN}✔ Playwright classique : OK${NC}"
  else
    E2E_OK=0
    echo -e "\n${RED}✘ Playwright classique : ÉCHECS${NC}"
  fi
  if [ -d "playwright-report" ]; then
    mv playwright-report "${REPORT_DIR}/playwright-html"
  fi
fi

# ─────────────────────────────────────────────────────────────────────────────
# 3. Suite "results" (round-trip saisie ↔ DB)
# ─────────────────────────────────────────────────────────────────────────────
if [ "$RUN_E2E_RESULTS" = "1" ]; then
  echo -e "\n${CYAN}${BOLD}▶ Suite results — saisie & restitution DB${NC}\n"
  if PLAYWRIGHT_JSON_OUTPUT_FILE="${RESULTS_JSON}" \
     npx playwright test \
       --grep "@results" \
       --reporter=list,json,html \
       --output="${REPORT_DIR}/artifacts-results" 2>&1 | tee "${REPORT_DIR}/playwright-results.log"; then
    echo -e "\n${GREEN}✔ Suite results : OK${NC}"
  else
    RESULTS_OK=0
    echo -e "\n${RED}✘ Suite results : ÉCHECS${NC}"
  fi
  if [ -d "playwright-report" ]; then
    mv playwright-report "${REPORT_DIR}/playwright-html-results"
  fi
fi

# ─────────────────────────────────────────────────────────────────────────────
# 4. Extraction métriques + génération du rapport HTML
# ─────────────────────────────────────────────────────────────────────────────

# --- Métriques Vitest ---
UNIT_TOTAL="—"; UNIT_PASSED="—"; UNIT_FAILED="—"; UNIT_FILES="—"; UNIT_DURATION="—"
if [ "$RUN_UNIT" = "1" ] && [ -f "${UNIT_JSON}" ]; then
  read -r UNIT_TOTAL UNIT_PASSED UNIT_FAILED UNIT_FILES UNIT_DURATION < <(python3 -c "
import json
d = json.load(open('${UNIT_JSON}'))
total = d.get('numTotalTests', 0)
passed = d.get('numPassedTests', 0)
failed = d.get('numFailedTests', 0)
files = d.get('numTotalTestSuites', 0)
ms = d.get('testResults', [{}])[-1].get('endTime', 0) - d.get('startTime', 0) if d.get('testResults') else 0
print(f'{total} {passed} {failed} {files} {ms/1000:.1f}')
" 2>/dev/null || echo "? ? ? ? ?")
fi

extract_pw_stats() {
  local json_file="$1"
  if [ ! -f "$json_file" ]; then
    echo "— — — — — —"
    return
  fi
  python3 -c "
import json
d = json.load(open('${json_file}'))
stats = d.get('stats', {})
total = stats.get('expected', 0) + stats.get('unexpected', 0) + stats.get('skipped', 0) + stats.get('flaky', 0)
passed = stats.get('expected', 0)
failed = stats.get('unexpected', 0)
skipped = stats.get('skipped', 0)
flaky = stats.get('flaky', 0)
duration = stats.get('duration', 0) / 1000
print(f'{total} {passed} {failed} {skipped} {flaky} {duration:.1f}')
" 2>/dev/null || echo "? ? ? ? ? ?"
}

E2E_TOTAL="—"; E2E_PASSED="—"; E2E_FAILED="—"; E2E_SKIPPED="—"; E2E_FLAKY="—"; E2E_DURATION="—"
if [ "$RUN_E2E_CLASSIC" = "1" ]; then
  read -r E2E_TOTAL E2E_PASSED E2E_FAILED E2E_SKIPPED E2E_FLAKY E2E_DURATION < <(extract_pw_stats "$E2E_JSON")
fi

RESULTS_TOTAL="—"; RESULTS_PASSED="—"; RESULTS_FAILED="—"; RESULTS_SKIPPED="—"; RESULTS_FLAKY="—"; RESULTS_DURATION="—"
if [ "$RUN_E2E_RESULTS" = "1" ]; then
  read -r RESULTS_TOTAL RESULTS_PASSED RESULTS_FAILED RESULTS_SKIPPED RESULTS_FLAKY RESULTS_DURATION < <(extract_pw_stats "$RESULTS_JSON")
fi

# --- Détails par fichier Vitest ---
VITEST_DETAILS=""
if [ "$RUN_UNIT" = "1" ] && [ -f "${UNIT_JSON}" ]; then
  VITEST_DETAILS=$(python3 -c "
import json
d = json.load(open('${UNIT_JSON}'))
for suite in d.get('testResults', []):
    name = suite.get('name', '').split('tests/unit/')[-1]
    passed = sum(1 for t in suite.get('assertionResults', []) if t.get('status') == 'passed')
    failed = sum(1 for t in suite.get('assertionResults', []) if t.get('status') == 'failed')
    total = passed + failed
    icon = '✅' if failed == 0 else '❌'
    duration = suite.get('endTime', 0) - suite.get('startTime', 0)
    print(f'<tr><td>{icon}</td><td>{name}</td><td>{passed}</td><td>{failed}</td><td>{total}</td><td>{duration}ms</td></tr>')
" 2>/dev/null || echo "")
fi

# --- Raisons des skips (Playwright) ---
# Un skip non expliqué est "confondant" : on lit "1 skipped" sans savoir si
# c'est voulu ou si un test a été ignoré par erreur. On remonte donc dans
# le rapport la description des annotations `{type: 'skip'}` (posées via
# `test.skip(true, "raison...")` dans les spécifications) et à défaut le
# titre du test.
PW_SKIPS_HTML=""
PW_SKIPS_TERM=""
build_pw_skips() {
  local json_file="$1"
  [ -f "$json_file" ] || return 0
  python3 -c "
import json
d = json.load(open('${json_file}'))
def walk(node, out):
    for s in node.get('specs', []):
        for t in s.get('tests', []):
            skipped = t.get('status') == 'skipped' or any(r.get('status') == 'skipped' for r in t.get('results', []))
            if not skipped:
                continue
            reason = ''
            for ann in s.get('annotations', []) + t.get('annotations', []):
                if ann.get('type') == 'skip' and ann.get('description'):
                    reason = ann['description']
                    break
            out.append((s.get('title', '?'), reason))
    for child in node.get('suites', []):
        walk(child, out)
skips = []
for suite in d.get('suites', []):
    walk(suite, skips)
for title, reason in skips:
    print(f'{title}\t{reason}')
" 2>/dev/null || true
}
# Construit HTML + terminal (une ligne par skip)
emit_skip_rows() {
  local json_file="$1"
  while IFS=$'\t' read -r title reason; do
    [ -z "$title" ] && continue
    [ -z "$reason" ] && reason="(sans raison documentée — à annoter dans le spec)"
    # HTML
    PW_SKIPS_HTML+="<tr><td>⏭</td><td>${title}</td><td>${reason}</td></tr>"
    # Terminal
    PW_SKIPS_TERM+="  ⏭  ${title}\n     → ${reason}\n"
  done < <(build_pw_skips "$json_file")
}
if [ "$RUN_E2E_CLASSIC" = "1" ]; then
  emit_skip_rows "$E2E_JSON"
fi
if [ "$RUN_E2E_RESULTS" = "1" ]; then
  emit_skip_rows "$RESULTS_JSON"
fi

# --- Détails par fichier Playwright (fusion classique + results) ---
PW_DETAILS=""
build_pw_details() {
  local json_file="$1"
  [ -f "$json_file" ] || return 0
  python3 -c "
import json
d = json.load(open('${json_file}'))
files2 = {}
for suite in d.get('suites', []):
    fname = suite.get('title', '?')
    def walk(node):
        for s in node.get('specs', []):
            if fname not in files2:
                files2[fname] = {'passed': 0, 'failed': 0}
            if s.get('ok'):
                files2[fname]['passed'] += 1
            else:
                files2[fname]['failed'] += 1
        for child in node.get('suites', []):
            walk(child)
    walk(suite)
for name, counts in sorted(files2.items()):
    p = counts['passed']
    f = counts['failed']
    icon = '✅' if f == 0 else '❌'
    print(f'<tr><td>{icon}</td><td>{name}</td><td>{p}</td><td>{f}</td><td>{p+f}</td></tr>')
" 2>/dev/null || true
}
if [ "$RUN_E2E_CLASSIC" = "1" ]; then
  PW_DETAILS+=$(build_pw_details "$E2E_JSON")
fi
if [ "$RUN_E2E_RESULTS" = "1" ]; then
  PW_DETAILS+=$(build_pw_details "$RESULTS_JSON")
fi

# --- Verdict global (seules les suites exécutées comptent) ---
if [ "$UNIT_OK" = "1" ] && [ "$E2E_OK" = "1" ] && [ "$RESULTS_OK" = "1" ]; then
  VERDICT="PASS"
  VERDICT_COLOR="#18753c"
  VERDICT_BG="#b8fec9"
  VERDICT_ICON="✅"
else
  VERDICT="FAIL"
  VERDICT_COLOR="#ce0500"
  VERDICT_BG="#fec9c9"
  VERDICT_ICON="❌"
fi

# --- Blocs HTML conditionnels (n'affiche que les suites réellement exécutées) ---
CARDS_HTML=""
if [ "$RUN_UNIT" = "1" ]; then
  CARDS_HTML+="<div class=\"card\"><h3>Vitest (unit + integ.)</h3><div class=\"value\">${UNIT_PASSED} / ${UNIT_TOTAL}</div><div>${UNIT_FILES} fichiers · ${UNIT_DURATION}s</div></div>"
fi
if [ "$RUN_E2E_CLASSIC" = "1" ]; then
  CARDS_HTML+="<div class=\"card\"><h3>Playwright classique</h3><div class=\"value\">${E2E_PASSED} / ${E2E_TOTAL}</div><div>${E2E_DURATION}s · ${E2E_SKIPPED} skip · ${E2E_FLAKY} flaky</div></div>"
fi
if [ "$RUN_E2E_RESULTS" = "1" ]; then
  CARDS_HTML+="<div class=\"card\"><h3>Suite results</h3><div class=\"value\">${RESULTS_PASSED} / ${RESULTS_TOTAL}</div><div>${RESULTS_DURATION}s · round-trip DB</div></div>"
fi

VITEST_SECTION=""
if [ "$RUN_UNIT" = "1" ]; then
  VITEST_SECTION="<h2>Détail — Vitest</h2><table><thead><tr><th></th><th>Fichier</th><th>Pass</th><th>Fail</th><th>Total</th><th>Durée</th></tr></thead><tbody>${VITEST_DETAILS}</tbody></table>"
fi

PW_SECTION=""
if [ "$RUN_E2E_CLASSIC" = "1" ] || [ "$RUN_E2E_RESULTS" = "1" ]; then
  PW_SECTION="<h2>Détail — Playwright</h2><table><thead><tr><th></th><th>Fichier</th><th>Pass</th><th>Fail</th><th>Total</th></tr></thead><tbody>${PW_DETAILS}</tbody></table>"
  if [ -n "$PW_SKIPS_HTML" ]; then
    PW_SECTION+="<h2>Tests volontairement skippés</h2><p class=\"meta\">Skip conditionnel documenté dans le spec — voir colonne « Raison ». Pas une régression.</p><table><thead><tr><th></th><th>Test</th><th>Raison</th></tr></thead><tbody>${PW_SKIPS_HTML}</tbody></table>"
  fi
fi

LINKS_HTML=""
[ "$RUN_E2E_CLASSIC" = "1" ] && LINKS_HTML+="<a href=\"playwright-html/index.html\">📊 Rapport Playwright classique</a>"
[ "$RUN_E2E_RESULTS" = "1" ] && LINKS_HTML+="<a href=\"playwright-html-results/index.html\">📊 Rapport Playwright results</a>"
[ "$RUN_UNIT" = "1" ]        && LINKS_HTML+="<a href=\"vitest.log\">📄 Log Vitest</a>"
[ "$RUN_E2E_CLASSIC" = "1" ] && LINKS_HTML+="<a href=\"playwright.log\">📄 Log Playwright</a>"
[ "$RUN_E2E_RESULTS" = "1" ] && LINKS_HTML+="<a href=\"playwright-results.log\">📄 Log Playwright results</a>"

# ─────────────────────────────────────────────────────────────────────────────
# 5. HTML
# ─────────────────────────────────────────────────────────────────────────────
cat > "${SUMMARY_HTML}" <<HTMLEOF
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Rapport de tests — ${TIMESTAMP}</title>
<style>
  :root { --blue-france: #000091; --red-marianne: #e1000f; }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { font-family: "Marianne", system-ui, -apple-system, sans-serif; background: #f6f6f6; color: #161616; padding: 2rem; }
  h1 { color: var(--blue-france); font-size: 1.75rem; margin-bottom: .5rem; }
  h2 { color: var(--blue-france); font-size: 1.25rem; margin: 2rem 0 1rem; border-bottom: 2px solid var(--blue-france); padding-bottom: .25rem; }
  .meta { color: #666; font-size: .875rem; margin-bottom: 2rem; }
  .verdict { display: inline-block; font-size: 1.5rem; font-weight: 700; padding: .75rem 2rem; border-radius: .5rem; color: ${VERDICT_COLOR}; background: ${VERDICT_BG}; margin-bottom: 1.5rem; }
  .mode { display: inline-block; margin-left: 1rem; padding: .5rem 1rem; border-radius: .25rem; background: #f0f0ff; color: var(--blue-france); font-weight: 600; }
  .cards { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 1rem; margin-bottom: 2rem; }
  .card { background: #fff; border-radius: .5rem; padding: 1.25rem; box-shadow: 0 1px 4px rgba(0,0,0,.1); }
  .card h3 { font-size: .875rem; color: #666; text-transform: uppercase; letter-spacing: .05em; margin-bottom: .5rem; }
  .card .value { font-size: 2rem; font-weight: 700; }
  .card .value.green { color: #18753c; }
  .card .value.red { color: #ce0500; }
  table { width: 100%; border-collapse: collapse; background: #fff; border-radius: .5rem; overflow: hidden; box-shadow: 0 1px 4px rgba(0,0,0,.1); margin-bottom: 1rem; }
  th { background: var(--blue-france); color: #fff; text-align: left; padding: .625rem .75rem; font-size: .875rem; }
  td { padding: .5rem .75rem; border-bottom: 1px solid #eee; font-size: .875rem; }
  tr:last-child td { border-bottom: none; }
  tr:hover td { background: #f0f0ff; }
  .links { margin-top: 2rem; }
  .links a { display: inline-block; margin-right: 1rem; padding: .5rem 1rem; background: var(--blue-france); color: #fff; text-decoration: none; border-radius: .25rem; font-size: .875rem; }
  .links a:hover { background: #1212ff; }
  footer { margin-top: 3rem; color: #999; font-size: .75rem; text-align: center; }
</style>
</head>
<body>

<h1>Rapport de tests — limesurvey-dsfr-suite</h1>
<p class="meta">${TIMESTAMP} · theme-dsfr/scripts/custom.js</p>

<div class="verdict">${VERDICT_ICON} ${VERDICT}</div>
<span class="mode">Mode : ${MODE}</span>

<div class="cards">${CARDS_HTML}</div>

${VITEST_SECTION}

${PW_SECTION}

<div class="links">${LINKS_HTML}</div>

<footer>Généré par run_tests.sh · mode ${MODE}</footer>
</body>
</html>
HTMLEOF

# ─────────────────────────────────────────────────────────────────────────────
# 6. Synthèse terminale
# ─────────────────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}═══════════════════════════════════════════════════${NC}"
echo -e "${BOLD}  SYNTHÈSE — ${TIMESTAMP} — mode ${MODE}${NC}"
echo -e "${BOLD}═══════════════════════════════════════════════════${NC}"
echo ""
[ "$RUN_UNIT" = "1" ]         && echo -e "  Vitest               : ${UNIT_PASSED}/${UNIT_TOTAL} pass  (${UNIT_FILES} fichiers, ${UNIT_DURATION}s)"
[ "$RUN_E2E_CLASSIC" = "1" ]  && echo -e "  Playwright classique : ${E2E_PASSED}/${E2E_TOTAL} pass  (${E2E_DURATION}s)"
[ "$RUN_E2E_RESULTS" = "1" ]  && echo -e "  Suite results        : ${RESULTS_PASSED}/${RESULTS_TOTAL} pass  (${RESULTS_DURATION}s)"
echo ""

# Détail des skips Playwright avec raison — évite la confusion "1 skipped"
# sans savoir si c'est volontaire ou une régression silencieuse.
if [ -n "$PW_SKIPS_TERM" ]; then
  echo -e "${YELLOW}  Tests volontairement skippés (skip documenté) :${NC}"
  echo -e "${PW_SKIPS_TERM}"
fi
if [ "$UNIT_OK" = "1" ] && [ "$E2E_OK" = "1" ] && [ "$RESULTS_OK" = "1" ]; then
  echo -e "  ${GREEN}${BOLD}✅ VERDICT : PASS${NC}"
else
  echo -e "  ${RED}${BOLD}❌ VERDICT : FAIL${NC}"
fi
echo ""
echo -e "  📁 Rapport HTML : ${REPORT_DIR}/index.html"
echo ""

# Code retour non-zéro si au moins une suite exécutée a échoué
[ "$UNIT_OK" = "1" ] && [ "$E2E_OK" = "1" ] && [ "$RESULTS_OK" = "1" ]
