import { test as base, type Page } from '@playwright/test';

/** ID du questionnaire de test RGAA chargé par db/seed.sh */
export const SURVEY_ID = 282267;

/** URL de départ du questionnaire (session fraîche) */
export const SURVEY_URL = `/index.php/${SURVEY_ID}?newtest=Y&lang=fr`;

/**
 * Fixture Playwright avec helpers pour naviguer dans le questionnaire.
 */
export const test = base.extend<{ surveyPage: Page }>({
  surveyPage: async ({ page }, use) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');
    await use(page);
  },
});

export { expect } from '@playwright/test';

/**
 * LimeSurvey utilise le même `#ls-button-submit` pour Next et Submit final.
 * On distingue par la value : "movenext" = suivant, "movesubmit" = envoyer.
 */
const NEXT_BTN = '#ls-button-submit[value="movenext"]';
const FINAL_SUBMIT_BTN = '#ls-button-submit[value="movesubmit"]';

/**
 * Remplit les champs obligatoires visibles sur la page courante
 * pour permettre la navigation vers la page suivante.
 */
export async function fillMandatoryFields(page: Page): Promise<void> {
  // Inputs texte (détecter les champs numériques via data-number="1")
  const mandatoryInputs = page.locator('.mandatory.question-container input[type="text"]:visible');
  const inputCount = await mandatoryInputs.count();
  for (let i = 0; i < inputCount; i++) {
    const val = await mandatoryInputs.nth(i).inputValue();
    if (!val) {
      const isNumeric = await mandatoryInputs.nth(i).getAttribute('data-number');
      await mandatoryInputs.nth(i).fill(isNumeric === '1' ? '42' : 'Test');
    }
  }
  // Textareas
  const mandatoryTextareas = page.locator('.mandatory.question-container textarea:visible');
  const taCount = await mandatoryTextareas.count();
  for (let i = 0; i < taCount; i++) {
    const val = await mandatoryTextareas.nth(i).inputValue();
    if (!val) await mandatoryTextareas.nth(i).fill('Test');
  }
  // Radios : cocher la première option si rien n'est sélectionné
  const mandatoryContainers = page.locator('.mandatory.question-container');
  const mcRadioCount = await mandatoryContainers.count();
  for (let i = 0; i < mcRadioCount; i++) {
    const container = mandatoryContainers.nth(i);
    const radios = container.locator('input[type="radio"]:visible');
    if (await radios.count() > 0 && await container.locator('input[type="radio"]:checked').count() === 0) {
      await radios.first().check({ force: true });
    }
  }
  // Ranking : ajouter au moins un élément si la question est vide
  const rankingQuestions = page.locator('.mandatory.question-container .ranking-btn-add');
  const rankBtnCount = await rankingQuestions.count();
  if (rankBtnCount > 0) {
    const firstBtn = rankingQuestions.first();
    if (await firstBtn.isVisible().catch(() => false)) {
      await firstBtn.click();
      await page.waitForTimeout(100);
    }
  }

  // Checkboxes : cocher la première option si rien n'est sélectionné
  const mandatoryCbContainers = page.locator('.mandatory.question-container');
  const mcCount = await mandatoryCbContainers.count();
  for (let i = 0; i < mcCount; i++) {
    const container = mandatoryCbContainers.nth(i);
    const checkboxes = container.locator('input[type="checkbox"]:visible');
    const cbTotal = await checkboxes.count();
    if (cbTotal === 0) continue;
    const checkedCount = await container.locator('input[type="checkbox"]:checked').count();
    if (checkedCount === 0) {
      // Le label DSFR recouvre l'input, utiliser force pour cocher directement
      await checkboxes.first().check({ force: true });
    }
  }
}

/**
 * Passe la page de bienvenue (si présente) pour arriver aux questions.
 */
export async function skipWelcomePage(page: Page): Promise<void> {
  const nextBtn = page.locator(NEXT_BTN);
  if (await nextBtn.isVisible().catch(() => false)) {
    await nextBtn.click();
    await page.waitForLoadState('domcontentloaded');
  }
}

/**
 * Clique "Suivant" jusqu'à trouver un sélecteur donné sur la page.
 * Remplit automatiquement les champs obligatoires pour passer chaque page.
 */
export async function navigateToSelector(page: Page, selector: string, maxPages = 15): Promise<void> {
  for (let i = 0; i < maxPages; i++) {
    const found = await page.locator(selector).first().isVisible().catch(() => false);
    if (found) return;

    await fillMandatoryFields(page);

    const nextBtn = page.locator(NEXT_BTN);
    if (await nextBtn.isVisible().catch(() => false)) {
      await nextBtn.click();
      await page.waitForLoadState('domcontentloaded');
    } else {
      throw new Error(`Selector "${selector}" not found after ${i + 1} pages and no Next button available`);
    }
  }
  throw new Error(`Selector "${selector}" not found after ${maxPages} pages`);
}

/**
 * Clique "Suivant" pour avancer d'un certain nombre de pages.
 * Remplit automatiquement les champs obligatoires pour ne pas rester bloqué.
 * Relance le remplissage si la page ne change pas (erreur de validation).
 */
export async function advancePages(page: Page, count: number): Promise<void> {
  for (let i = 0; i < count; i++) {
    const maxRetries = 3;
    for (let attempt = 0; attempt < maxRetries; attempt++) {
      await fillMandatoryFields(page);

      // Remplir les rankings visibles (non obligatoires mais requis par LimeSurvey)
      const rankings = page.locator('.ranking-question-dsfr');
      const rankCount = await rankings.count();
      if (rankCount > 0) {
        // Attendre que le JS initialise les boutons de ranking
        await page.locator('.ranking-btn-add').first().waitFor({ state: 'visible', timeout: 3_000 }).catch(() => {});
        for (let r = 0; r < rankCount; r++) {
          // Remplir tous les selects vides du ranking (certains exigent un minimum)
          const selects = rankings.nth(r).locator('select');
          const selectCount = await selects.count();
          for (let s = 0; s < selectCount; s++) {
            if (!(await selects.nth(s).inputValue())) {
              const addBtn = rankings.nth(r).locator('.ranking-btn-add').first();
              if (await addBtn.isVisible().catch(() => false)) {
                await addBtn.click();
                await page.waitForTimeout(150);
              }
            }
          }
        }
      }

      const questionsBefore = await page.locator('.question-container').count();
      const errorsBefore = await page.locator('.question-container.input-error').count();

      const nextBtn = page.locator(NEXT_BTN);
      if (await nextBtn.isVisible().catch(() => false)) {
        await nextBtn.click();
        await page.waitForLoadState('domcontentloaded');
      }

      // Vérifier si on a avancé : pas d'erreurs ou nombre de questions différent
      const errorsAfter = await page.locator('.question-container.input-error').count();
      if (errorsAfter === 0) break; // Pas d'erreur = on a avancé
    }
  }
}

/**
 * Soumet la page courante (Next ou Submit final).
 */
export async function submitCurrentPage(page: Page): Promise<void> {
  const finalBtn = page.locator(FINAL_SUBMIT_BTN);
  const nextBtn = page.locator(NEXT_BTN);

  if (await finalBtn.isVisible().catch(() => false)) {
    await finalBtn.click();
  } else if (await nextBtn.isVisible().catch(() => false)) {
    await nextBtn.click();
  }
  await page.waitForLoadState('domcontentloaded');
}
