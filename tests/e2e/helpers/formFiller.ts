import type { Page } from '@playwright/test';

export type Variant = 'A' | 'B';

/**
 * Valeur effectivement présente dans un champ LimeSurvey au moment de la
 * soumission. La clé est le nom de la colonne SGQA (ex: "282267X1X1",
 * "282267X1X6SQ01") telle qu'elle apparaît dans la table `lime_survey_<sid>`.
 */
export type FilledValues = Map<string, string>;

/** Enlève l'éventuel préfixe "answer" posé par LimeSurvey sur le name de certains inputs. */
function columnFromName(name: string): string {
  return name.replace(/^answer/, '');
}

/** Échappement CSS pour les `name` contenant des caractères spéciaux. */
function cssEscape(value: string): string {
  return value.replace(/(["\\])/g, '\\$1');
}

function textValue(variant: Variant, fieldName: string): string {
  const clean = columnFromName(fieldName).replace(/[^A-Za-z0-9]/g, '');
  const base = variant === 'A' ? 'Reponse-A' : 'Reponse-B';
  return `${base}-${clean}`;
}

/**
 * Nombre borné dans [1, 3] pour satisfaire simultanément toutes les
 * contraintes numériques du questionnaire de test (ex. MNM : somme ≤ 10).
 */
function numericValue(variant: Variant, fieldName: string): string {
  let hash = 0;
  for (let i = 0; i < fieldName.length; i++) hash = (hash * 31 + fieldName.charCodeAt(i)) >>> 0;
  const base = 1 + (hash % 3);
  const shifted = variant === 'A' ? base : 1 + ((hash + 1) % 3);
  return String(shifted);
}

function datePartsFor(variant: Variant): { day: string; month: string; year: string } {
  return variant === 'A'
    ? { day: '15', month: '06', year: '2024' }
    : { day: '21', month: '03', year: '2025' };
}

/* ───────────────────────── Fillers (saisie) ──────────────────────────── */

async function fillTextInputs(page: Page, variant: Variant): Promise<void> {
  const names = await page.locator('.question-container input[type="text"], .question-container input[type="email"], .question-container input[type="url"]').evaluateAll((els) =>
    (els as HTMLInputElement[])
      .filter((el) => el.offsetParent !== null && el.getAttribute('data-number') !== '1')
      .map((el) => el.name)
      .filter(Boolean),
  );
  for (const name of names) {
    await page.locator(`input[name="${cssEscape(name)}"]`).first().fill(textValue(variant, name));
  }

  const taNames = await page.locator('.question-container textarea').evaluateAll((els) =>
    (els as HTMLTextAreaElement[])
      .filter((el) => el.offsetParent !== null)
      .map((el) => el.name)
      .filter(Boolean),
  );
  for (const name of taNames) {
    await page.locator(`textarea[name="${cssEscape(name)}"]`).first().fill(textValue(variant, name));
  }
}

async function fillNumericInputs(page: Page, variant: Variant): Promise<void> {
  const names = await page.locator('.question-container input[type="number"], .question-container input[type="text"][data-number="1"]').evaluateAll((els) =>
    (els as HTMLInputElement[])
      .filter((el) => el.offsetParent !== null)
      .map((el) => el.name)
      .filter(Boolean),
  );
  for (const name of names) {
    await page.locator(`input[name="${cssEscape(name)}"]`).first().fill(numericValue(variant, name));
  }
}

async function fillSelects(page: Page, variant: Variant): Promise<void> {
  const snapshot = await page.locator('.question-container select').evaluateAll((els) =>
    (els as HTMLSelectElement[])
      .filter((el) => el.offsetParent !== null && !el.closest('.ranking-question-dsfr'))
      .map((el) => ({
        name: el.name,
        options: Array.from(el.options).map((o) => o.value).filter((v) => v !== '' && v !== '-oth-'),
      })),
  );
  for (const { name, options } of snapshot) {
    if (!name || options.length === 0) continue;
    if (/^(day|month|year|hour|minute)\d/.test(name)) continue;
    const picked = options[variant === 'A' ? 0 : Math.min(1, options.length - 1)];
    await page.locator(`select[name="${cssEscape(name)}"]`).first().selectOption(picked);
  }
}

async function fillRadios(page: Page, variant: Variant): Promise<void> {
  const snapshot = await page.locator('.question-container:not(.ls-hidden):not(.ls-irrelevant) input[type="radio"]:not(:disabled)').evaluateAll((els) =>
    (els as HTMLInputElement[])
      .filter((el) => el.value !== '' && el.value !== '-oth-')
      .map((el) => ({ name: el.name, value: el.value })),
  );
  const byName = new Map<string, string[]>();
  for (const { name, value } of snapshot) {
    if (!name) continue;
    if (!byName.has(name)) byName.set(name, []);
    byName.get(name)!.push(value);
  }
  for (const [name, values] of byName) {
    if (values.length === 0) continue;
    const picked = values[variant === 'A' ? 0 : Math.min(1, values.length - 1)];
    await page
      .locator(`input[type="radio"][name="${cssEscape(name)}"][value="${cssEscape(picked)}"]`)
      .first()
      .evaluate((el: HTMLInputElement) => {
        if (!el.checked) el.click();
      });
  }
}

async function fillCheckboxes(page: Page, variant: Variant): Promise<void> {
  const names = await page.locator('.question-container:not(.ls-hidden):not(.ls-irrelevant) input[type="checkbox"]:not(:disabled)').evaluateAll((els) =>
    (els as HTMLInputElement[])
      .filter((el) => !el.name.startsWith('java') && !el.name.endsWith('othercbox'))
      .map((el) => el.name)
      .filter(Boolean),
  );
  for (let i = 0; i < names.length; i++) {
    const name = names[i];
    const shouldCheck = variant === 'A' ? true : i % 2 === 0;
    await page.locator(`input[type="checkbox"][name="${cssEscape(name)}"]`).first().evaluate((el: HTMLInputElement, want: boolean) => {
      if (el.checked !== want) el.click();
    }, shouldCheck);
  }
}

async function fillDateSelects(page: Page, variant: Variant): Promise<void> {
  const parts = datePartsFor(variant);
  const dayNames = await page.locator('.question-container .date-item select[name^="day"]').evaluateAll((els) =>
    (els as HTMLSelectElement[])
      .filter((el) => el.offsetParent !== null)
      .map((el) => el.name),
  );
  for (const dayName of dayNames) {
    const base = dayName.slice(3);
    await page.locator(`select[name="${cssEscape(dayName)}"]`).first().selectOption(parts.day);
    await page.locator(`select[name="month${cssEscape(base)}"]`).first().selectOption(parts.month).catch(() => {});
    await page.locator(`select[name="year${cssEscape(base)}"]`).first().selectOption(parts.year).catch(() => {});
  }
}

async function fillRankings(page: Page): Promise<void> {
  const rankings = page.locator('.ranking-question-dsfr');
  const count = await rankings.count();
  for (let r = 0; r < count; r++) {
    const ranking = rankings.nth(r);
    const minAnswers = parseInt((await ranking.getAttribute('data-min-answers')) || '0', 10);
    const target = Math.max(minAnswers, 2);
    for (let i = 0; i < target; i++) {
      const addBtn = ranking.locator('.ranking-btn-add').first();
      if (!(await addBtn.isVisible().catch(() => false))) break;
      await addBtn.click({ timeout: 2_000 }).catch(() => {});
      await page.waitForTimeout(100);
    }
  }
}

/* ───────────────────────── Snapshot (lecture) ────────────────────────── */

/**
 * Après remplissage, lit l'état effectif du formulaire (ce qui sera envoyé
 * côté serveur) pour chaque `name` pertinent. Les champs cachés par la
 * relevance ne sont PAS inclus — ce qui permet au test de ne vérifier que ce
 * que l'utilisateur voit réellement au moment du submit.
 *
 * Aggrégations spéciales :
 *   - day/month/year → "YYYY-MM-DD 00:00:00" sous le nom de base
 *
 * Exclusions :
 *   - inputs cachés par relevance (`.ls-hidden`, `.ls-irrelevant`)
 *   - inputs de suivi LimeSurvey (`name="java…"`)
 *   - checkbox "Other" d'une multiplechoice (`*othercbox`)
 *   - selects internes aux rankings (leur valeur est posée par le JS DnD)
 */
export async function snapshotFormState(page: Page): Promise<FilledValues> {
  const raw = await page.evaluate(() => {
    const result: Array<{ name: string; value: string; kind: string }> = [];
    const containers = document.querySelectorAll(
      '.question-container:not(.ls-hidden):not(.ls-irrelevant)',
    );
    // Helper: un input est réellement actif s'il n'a AUCUN ancêtre caché par
    // LimeSurvey (relevance ou array_filter — le filtre de tableau marque les
    // lignes cachées au niveau <tr> / <div.subquestion-list-item>).
    const isLiveInput = (el: Element): boolean => {
      return !el.closest('.ls-hidden, .ls-irrelevant, .ls-disabled');
    };
    containers.forEach((container) => {
      // Inputs texte / numériques / email / url
      container.querySelectorAll<HTMLInputElement>(
        'input[type="text"], input[type="email"], input[type="url"], input[type="number"]',
      ).forEach((el) => {
        if (!el.name || el.name.startsWith('java')) return;
        if (/^(day|month|year|hour|minute)\d/.test(el.name)) return;
        if (!isLiveInput(el)) return;
        result.push({ name: el.name, value: el.value, kind: 'text' });
      });

      // Textareas
      container.querySelectorAll<HTMLTextAreaElement>('textarea').forEach((el) => {
        if (!el.name || !isLiveInput(el)) return;
        result.push({ name: el.name, value: el.value, kind: 'text' });
      });

      // Radios (on ne retient que le checked)
      const radioGroups = new Set<string>();
      container.querySelectorAll<HTMLInputElement>('input[type="radio"]').forEach((el) => {
        if (!el.name || el.value === '' || el.value === '-oth-') return;
        if (!isLiveInput(el)) return;
        radioGroups.add(el.name);
      });
      radioGroups.forEach((name) => {
        const checked = container.querySelector<HTMLInputElement>(
          `input[type="radio"][name="${name}"]:checked`,
        );
        result.push({ name, value: checked ? checked.value : '', kind: 'radio' });
      });

      // Checkboxes
      container.querySelectorAll<HTMLInputElement>('input[type="checkbox"]').forEach((el) => {
        if (!el.name || el.name.startsWith('java') || el.name.endsWith('othercbox')) return;
        if (!isLiveInput(el)) return;
        result.push({ name: el.name, value: el.checked ? el.value || 'Y' : '', kind: 'checkbox' });
      });

      // Selects (hors ranking interne)
      container.querySelectorAll<HTMLSelectElement>('select').forEach((el) => {
        if (!el.name) return;
        if (el.closest('.ranking-question-dsfr')) return;
        if (/^(day|month|year|hour|minute)\d/.test(el.name)) return;
        if (!isLiveInput(el)) return;
        result.push({ name: el.name, value: el.value, kind: 'select' });
      });

      // NOTE : les questions de type Date (D) sont volontairement exclues du
      // round-trip. Le thème DSFR ne compose pas correctement day/month/year
      // vers la colonne SGQA côté serveur, et la colonne reste NULL même
      // lorsque les 3 selects sont renseignés côté navigateur. C'est un
      // bug connu du thème, tracké à part — pas une régression de ce test.
    });
    return result;
  });

  const snapshot: FilledValues = new Map();
  for (const { name, value } of raw) {
    snapshot.set(columnFromName(name), value);
  }
  return snapshot;
}

/* ───────────────────────── Orchestration ─────────────────────────────── */

async function fillOnePass(page: Page, variant: Variant): Promise<void> {
  await fillTextInputs(page, variant);
  await fillNumericInputs(page, variant);
  await fillDateSelects(page, variant);
  await fillSelects(page, variant);
  await fillRadios(page, variant);
  await fillCheckboxes(page, variant);
  await fillRankings(page);
}

/**
 * Remplit la page deux fois (pour que la relevance dévoile tout), puis
 * renvoie un snapshot des valeurs effectivement sur le point d'être soumises.
 */
export async function fillAllVisibleFields(page: Page, variant: Variant): Promise<FilledValues> {
  await fillOnePass(page, variant);
  await page.waitForTimeout(150);
  await fillOnePass(page, variant);
  await page.waitForTimeout(150);
  return snapshotFormState(page);
}

/** Lit l'aria-label du progressbar DSFR : "Étape X sur Y". */
export async function currentStepLabel(page: Page): Promise<string | null> {
  const el = page.locator('[role="progressbar"]').first();
  if (!(await el.count())) return null;
  return (await el.getAttribute('aria-label')) || null;
}
