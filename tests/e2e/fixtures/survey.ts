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
    await page.waitForLoadState('networkidle');
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
 * Passe la page de bienvenue (si présente) pour arriver aux questions.
 */
export async function skipWelcomePage(page: Page): Promise<void> {
  const nextBtn = page.locator(NEXT_BTN);
  if (await nextBtn.isVisible().catch(() => false)) {
    await nextBtn.click();
    await page.waitForLoadState('networkidle');
  }
}

/**
 * Clique "Suivant" jusqu'à trouver un sélecteur donné sur la page.
 * Passe automatiquement la page de bienvenue.
 */
export async function navigateToSelector(page: Page, selector: string, maxPages = 15): Promise<void> {
  for (let i = 0; i < maxPages; i++) {
    const found = await page.locator(selector).first().isVisible().catch(() => false);
    if (found) return;

    const nextBtn = page.locator(NEXT_BTN);
    if (await nextBtn.isVisible().catch(() => false)) {
      await nextBtn.click();
      await page.waitForLoadState('networkidle');
    } else {
      throw new Error(`Selector "${selector}" not found after ${i + 1} pages and no Next button available`);
    }
  }
  throw new Error(`Selector "${selector}" not found after ${maxPages} pages`);
}

/**
 * Clique "Suivant" pour avancer d'un certain nombre de pages.
 */
export async function advancePages(page: Page, count: number): Promise<void> {
  for (let i = 0; i < count; i++) {
    const nextBtn = page.locator(NEXT_BTN);
    if (await nextBtn.isVisible().catch(() => false)) {
      await nextBtn.click();
      await page.waitForLoadState('networkidle');
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
  await page.waitForLoadState('networkidle');
}
