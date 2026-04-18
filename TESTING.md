# Tests

Suite de tests du thème DSFR, pilotée depuis ce repo parent. Trois strates complémentaires :

| Strate | Stack | Scope | Fichiers |
|---|---|---|---|
| **Unitaires + intégration** | [Vitest](https://vitest.dev/) + [jsdom](https://github.com/jsdom/jsdom) | Fonctions pures et modules `src/` branchés sur un DOM simulé | [`tests/unit/`](tests/unit/) |
| **E2E + a11y** | [Playwright](https://playwright.dev/) + [axe-core](https://www.deque.com/axe/) | Rendu réel dans Chromium sur une instance LimeSurvey dockerisée | [`tests/e2e/`](tests/e2e/) |
| **Round-trip saisie ↔ DB** | Playwright + MySQL | Remplit tout un questionnaire, soumet, vérifie que chaque valeur est correctement stockée en base | [`tests/e2e/results.spec.ts`](tests/e2e/results.spec.ts) |

Volume actuel : ~350 tests Vitest, ~125 tests Playwright classiques, 2 tests round-trip (variantes A et B avec valeurs différentes). ~71 s pour l'intégralité sur un Mac récent.

---

## Lancer les tests

Orchestrateur : [`run_tests.sh`](run_tests.sh). Cinq modes via switch :

```bash
./run_tests.sh --simple    # Vitest seul (unitaires + intégration)
./run_tests.sh --ui        # Playwright classique (E2E + a11y), hors @results
./run_tests.sh --classic   # --simple + --ui
./run_tests.sh --results   # Uniquement le round-trip — modifie la DB de dev
./run_tests.sh --full      # Tout : --classic + --results
```

Prérequis : la stack Docker doit tourner (`docker compose -f docker-compose.dev.yml up -d`) et la base doit être seedée (`./db/seed.sh`).

### Avant un round-trip

Le mode `--results` ajoute des lignes dans `lime_survey_<sid>`. Pour repartir d'une base propre :

```bash
docker exec limesurvey-dev-db mysql -u limesurvey -plimesurvey limesurvey \
    -e "TRUNCATE TABLE lime_survey_282267;"
```

---

## Rapport des résultats

Chaque exécution de `run_tests.sh` génère un **rapport HTML unifié** dans :

```
test-reports/<timestamp>/index.html
```

Il contient :
- Le verdict global (PASS / FAIL) et le mode utilisé
- Une carte par suite exécutée (Vitest / Playwright classique / results)
- Le détail par fichier de test (pass / fail / durée)
- Les liens vers les rapports Playwright HTML détaillés (`playwright-html/` et `playwright-html-results/`)
- Les logs bruts (`vitest.log`, `playwright.log`, `playwright-results.log`)

Artefacts en cas d'échec (captures, traces, contextes d'erreur) dans `test-reports/<timestamp>/artifacts/`.

---

## Structure détaillée

### `tests/unit/`

Un fichier par module `src/` du thème (ou par fonction pure). Les tests s'importent directement depuis `modules/theme-dsfr/src/**/*.js`. Chaque test isole son DOM via `beforeEach`.

Catégories couvertes :
- **Validation** : `createErrorSummary`, `updateErrorSummary`, `handleArrayValidation`, `handleMultipleShortTextErrors`, `transformErrorsToDsfr`, `initAriaInvalidSync`
- **A11y** : `conditionalAria`, `fixTableAccessibility`, `enableImageLazyLoading`, `extendDescribedByForValidationTips`
- **Inputs** : `inputOnDemand`, `reorderListRadioNoAnswer`, `addInputmodeNumericToNumericFields`
- **Ranking** : tests de `updateRankNumbers`, `refreshAllItems`, disabling des boutons up/down aux extrémités
- **Helpers** : `tMandatory`, `tRanking`, `isValidNumber`, `sanitizeRTEContent`, `sanitizeTree`, `getQuestionText`, `extractQuestionCodes`, `findQuestionByCode`

### `tests/e2e/`

- **`smoke.spec.ts`** — la page se charge, thème DSFR appliqué, scripts custom chargés
- **`question-types.spec.ts`** — rendu de chaque type de question par page
- **`validation.spec.ts`** — champs obligatoires, messages d'erreur, résumé d'erreurs, mise à jour en place
- **`conditional.spec.ts`** — questions conditionnelles (QC / QCYes / QCNo / QCS*)
- **`relevance.spec.ts`** — classes `ls-irrelevant` / `ls-hidden` posées par la relevance
- **`ranking.spec.ts`** — rendu, ajout/retrait, réordonnancement, accessibilité clavier, live region
- **`numeric-sum-validation.spec.ts`** — contraintes min/max/sum sur `multiplenumeric`
- **`responsive.spec.ts`** — viewports mobile/tablet/desktop, linéarisation tableaux, labels visibles dans les cellules
- **`a11y.spec.ts`** — audit axe-core WCAG 2.1 AA par page, skip links, aria-required, aria-invalid, hiérarchie des titres, labels, focus
- **`results.spec.ts`** — round-trip saisie ↔ base : 2 variantes (A, B) avec valeurs déterministes différentes, vérification colonne par colonne dans `lime_survey_<sid>`

Helpers partagés dans [`tests/e2e/helpers/`](tests/e2e/helpers/) :
- `selectors.ts` — dictionnaire centralisé des sélecteurs CSS
- `formFiller.ts` — remplissage exhaustif d'un formulaire + snapshot DOM pré-soumission
- `dbFetcher.ts` — lecture de la dernière réponse soumise via `docker exec mysql`

Fixtures dans [`tests/e2e/fixtures/survey.ts`](tests/e2e/fixtures/survey.ts).

---

## Philosophie

- **Round-trip plutôt que mocks** : la suite `--results` soumet un vrai formulaire et lit la DB — on vérifie le contrat de bout en bout, pas des mocks intermédiaires.
- **Snapshot plutôt que prédiction** : le `formFiller` remplit tous les champs puis snapshot le DOM juste avant la soumission ; les attentes reflètent ce qui sera réellement envoyé au serveur, pas une prédiction abstraite.
- **Deux variantes par round-trip** : A et B utilisent des valeurs déterministes **différentes** (texte, numérique, radios, checkboxes, dates). Ça protège contre les faux positifs où le test passerait par coïncidence sur une valeur partagée avec un test précédent.
- **Couverture a11y systématique** : chaque page du questionnaire passe par `axe-core` avec niveau WCAG 2.1 AA — toute violation `critical` ou `serious` fait échouer la CI.

---

## Continuous Integration

`run_tests.sh --full` retourne un code de sortie non-zéro si au moins une suite exécutée échoue, donc utilisable tel quel dans un pipeline CI.

Build du bundle theme + diff check (pour détecter les bundles commités obsolètes) :

```bash
npm run build:theme:check     # build + git diff --exit-code sur scripts/custom.js
```
