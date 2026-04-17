import { test, expect, SURVEY_URL, advancePages } from './fixtures/survey';
import { S } from './helpers/selectors';

const NEXT_BTN = '#ls-button-submit[value="movenext"]';

/**
 * Navigate to the mandatory text fields page (page 2, group_order=2).
 * From the survey start: welcome page → page 1 (texte) → page 2 (texte obligatoires).
 */
async function goToMandatoryPage(page: import('@playwright/test').Page): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  // Advance 2 pages: welcome → page 1, page 1 → page 2 (mandatory)
  for (let i = 0; i < 2; i++) {
    const nextBtn = page.locator(NEXT_BTN);
    await nextBtn.click();
    await page.waitForLoadState('domcontentloaded');
  }
}

/**
 * Submit the current page without filling anything to trigger validation errors.
 */
async function submitEmpty(page: import('@playwright/test').Page): Promise<void> {
  await page.locator(NEXT_BTN).click();
  await page.waitForLoadState('domcontentloaded');
}

test.describe('Validation — champs obligatoires et erreurs DSFR', () => {

  test.describe('Indicateurs de champs obligatoires', () => {

    test('la mention de champs obligatoires est visible', async ({ page }) => {
      await goToMandatoryPage(page);
      await expect(page.locator(S.requiredNotice)).toBeVisible();
    });

    test('les questions obligatoires ont un astérisque', async ({ page }) => {
      await goToMandatoryPage(page);
      const asterisks = page.locator(S.requiredAsterisk);
      const count = await asterisks.count();
      expect(count).toBeGreaterThan(0);
    });

    test('les inputs obligatoires ont aria-required="true"', async ({ page }) => {
      await goToMandatoryPage(page);
      const mandatoryInputs = page.locator(
        `${S.mandatoryQuestion} input[type="text"][aria-required="true"], ` +
        `${S.mandatoryQuestion} textarea[aria-required="true"]`
      );
      const count = await mandatoryInputs.count();
      expect(count).toBeGreaterThan(0);
    });
  });

  test.describe('Affichage des erreurs à la soumission vide', () => {

    test('les conteneurs de questions passent en erreur', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      const errorContainers = page.locator(S.questionContainerError);
      await expect(errorContainers.first()).toBeVisible({ timeout: 10_000 });
      const count = await errorContainers.count();
      expect(count).toBeGreaterThan(0);
    });

    test('les groupes d\'input DSFR sont en erreur', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      const errorGroups = page.locator(S.frInputGroupError);
      await expect(errorGroups.first()).toBeVisible({ timeout: 10_000 });
      const count = await errorGroups.count();
      expect(count).toBeGreaterThan(0);
    });

    test('des messages d\'erreur DSFR sont affichés', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      const errorMessages = page.locator(S.frMessageError);
      await expect(errorMessages.first()).toBeVisible({ timeout: 10_000 });
      const count = await errorMessages.count();
      expect(count).toBeGreaterThan(0);
    });

    test('les messages d\'erreur mentionnent le caractère obligatoire', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      const errorMessages = page.locator(S.frMessageError);
      await expect(errorMessages.first()).toBeVisible({ timeout: 10_000 });
      const firstText = await errorMessages.first().textContent();
      expect(firstText?.toLowerCase()).toMatch(/obligatoire/);
    });
  });

  test.describe('Résumé des erreurs (error summary)', () => {

    test('le résumé des erreurs est visible après soumission vide', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      await expect(page.locator(S.errorSummary)).toBeVisible({ timeout: 10_000 });
    });

    test('le résumé contient des liens vers les questions en erreur', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      await expect(page.locator(S.errorSummary)).toBeVisible({ timeout: 10_000 });
      const links = page.locator(S.errorSummaryLink);
      const count = await links.count();
      expect(count).toBeGreaterThan(0);

      // Each link should have an href pointing to a question anchor
      for (let i = 0; i < count; i++) {
        const href = await links.nth(i).getAttribute('href');
        expect(href).toMatch(/^#question/);
      }
    });

    test('cliquer un lien du résumé déplace le focus vers la question', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      await expect(page.locator(S.errorSummary)).toBeVisible({ timeout: 10_000 });
      const firstLink = page.locator(S.errorSummaryLink).first();
      const href = await firstLink.getAttribute('href');
      expect(href).toBeTruthy();

      await firstLink.click();

      // The target question container (or an input inside it) should be focused or scrolled into view
      const targetId = href!.replace('#', '');
      const target = page.locator(`#${targetId}`);
      await expect(target).toBeVisible();
    });
  });

  test.describe('Suppression des erreurs après correction', () => {

    test('corriger un champ supprime son état d\'erreur', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      // Wait for errors to appear
      await expect(page.locator(S.questionContainerError).first()).toBeVisible({ timeout: 10_000 });

      // Target question 60 (SCopy) — simple short text, single input
      const question60 = page.locator('#question60');
      await expect(question60).toHaveClass(/input-error/);

      // Fill its input
      const input = question60.locator('input[type="text"]');
      await input.fill('Test validation');
      await input.dispatchEvent('change');
      await input.blur();

      // The question container should no longer have the error class
      await expect(question60).not.toHaveClass(/input-error/, { timeout: 5_000 });
    });

    test('le résumé des erreurs se met à jour après correction', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      await expect(page.locator(S.errorSummary)).toBeVisible({ timeout: 10_000 });

      // Count non-corrected error items
      const uncorrectedSelector = '#dsfr-error-summary .error-item:not(.corrected)';
      const initialCount = await page.locator(uncorrectedSelector).count();
      expect(initialCount).toBeGreaterThan(0);

      // Fill question 60 (SCopy) — simple short text
      const input = page.locator('#question60 input[type="text"]');
      await input.fill('Test validation');
      await input.dispatchEvent('change');
      await input.blur();

      // The error summary should show fewer uncorrected items and update its title
      await expect(async () => {
        const updatedCount = await page.locator(uncorrectedSelector).count();
        expect(updatedCount).toBeLessThan(initialCount);
      }).toPass({ timeout: 5_000 });
    });
  });

  test.describe('Transformation DSFR des styles d\'erreur', () => {

    test('les conteneurs en erreur ont la classe .fr-input-group--error et les inputs aria-invalid', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      // Les conteneurs de questions en erreur ont .fr-input-group--error
      const errorGroups = page.locator(S.frInputGroupError);
      await expect(errorGroups.first()).toBeVisible({ timeout: 10_000 });
      const count = await errorGroups.count();
      expect(count).toBeGreaterThan(0);

      // Les inputs dans les conteneurs en erreur ont aria-invalid="true"
      const q60Input = page.locator('#question60 input[type="text"]');
      await expect(q60Input).toHaveAttribute('aria-invalid', 'true');
    });

    test('les conteneurs .fr-messages-group contiennent des .fr-message--error', async ({ page }) => {
      await goToMandatoryPage(page);
      await submitEmpty(page);

      const messagesGroups = page.locator(S.frMessagesGroup);
      await expect(messagesGroups.first()).toBeVisible({ timeout: 10_000 });

      // At least one messages group should contain an error message
      const groupsWithErrors = page.locator(`${S.frMessagesGroup}:has(${S.frMessageError})`);
      const count = await groupsWithErrors.count();
      expect(count).toBeGreaterThan(0);
    });
  });

  test.describe('Validation numérique', () => {

    test('saisir du texte dans un champ numérique déclenche une erreur', async ({ page }) => {
      await page.goto(SURVEY_URL);
      await page.waitForLoadState('domcontentloaded');
      await advancePages(page, 3);

      // Find a numeric input and type invalid text
      const numericInput = page.locator(S.numericInput).first();
      await expect(numericInput).toBeVisible({ timeout: 10_000 });
      await numericInput.fill('abc');

      // Submit to trigger validation
      await page.locator(NEXT_BTN).click();
      await page.waitForLoadState('domcontentloaded');

      // Verify error feedback appears
      const hasQuestionError = page.locator(S.questionContainerError);
      const hasFrError = page.locator(S.frInputGroupError);
      const hasMessage = page.locator(S.frMessageError);

      const errorVisible = await hasQuestionError.first().isVisible().catch(() => false)
        || await hasFrError.first().isVisible().catch(() => false)
        || await hasMessage.first().isVisible().catch(() => false);

      expect(errorVisible).toBe(true);
    });
  });
});
