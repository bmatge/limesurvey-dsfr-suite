import { test, expect, SURVEY_URL, navigateToSelector } from './fixtures/survey';
import { S } from './helpers/selectors';

/**
 * Navigate to the "Conditions et scenarios" page (gid=5).
 * Identifiée par la présence de #question42 (QC, type Oui/Non).
 * Robuste au réordonnancement : utilise navigateToSelector plutôt
 * qu'un nombre fixe de clics "Suivant".
 */
async function goToConditionalPage(page: import('@playwright/test').Page): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await navigateToSelector(page, '#question42');
}

/** Locator for question container by qid. */
function questionLocator(page: import('@playwright/test').Page, qid: number) {
  return page.locator(`#question${qid}`);
}

test.describe('Conditions et scenarios — questions conditionnelles', () => {

  test.describe('Etat initial — visibilite par defaut', () => {

    test('la question Oui/Non (QC, qid 42) est visible sans selection significative', async ({ page }) => {
      await goToConditionalPage(page);

      const qc = questionLocator(page, 42);
      await expect(qc).toBeVisible({ timeout: 10_000 });

      // Neither "Oui" (Y) nor "Non" (N) should be selected — "Sans réponse" (empty value) is the default
      const ouiChecked = qc.locator('input[type="radio"][value="Y"]:checked');
      const nonChecked = qc.locator('input[type="radio"][value="N"]:checked');
      await expect(ouiChecked).toHaveCount(0);
      await expect(nonChecked).toHaveCount(0);
    });

    test('QCDefault (qid 45) est visible par defaut', async ({ page }) => {
      await goToConditionalPage(page);

      const qcDefault = questionLocator(page, 45);
      await expect(qcDefault).toBeVisible({ timeout: 10_000 });
      await expect(qcDefault).not.toHaveClass(/ls-irrelevant/);
    });

    test('QCYes (qid 43) est masquee par defaut', async ({ page }) => {
      await goToConditionalPage(page);

      const qcYes = questionLocator(page, 43);
      await expect(qcYes).toHaveClass(/ls-irrelevant/, { timeout: 10_000 });
    });

    test('QCNo (qid 44) est masquee par defaut', async ({ page }) => {
      await goToConditionalPage(page);

      const qcNo = questionLocator(page, 44);
      await expect(qcNo).toHaveClass(/ls-irrelevant/, { timeout: 10_000 });
    });
  });

  test.describe('Selection "Oui" — affichage conditionnel', () => {

    test('selectionner "Oui" affiche QCYes et masque QCDefault', async ({ page }) => {
      await goToConditionalPage(page);

      // Select "Oui" (Yes) on qid 42
      const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
      await ouiRadio.check({ force: true });

      // Wait for ExpressionScript evaluation
      await page.waitForTimeout(500);

      // QCYes (qid 43) should now be visible
      const qcYes = questionLocator(page, 43);
      await expect(qcYes).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
      await expect(qcYes).toBeVisible();

      // QCNo (qid 44) should remain hidden
      const qcNo = questionLocator(page, 44);
      await expect(qcNo).toHaveClass(/ls-irrelevant/);

      // QCDefault (qid 45) should become hidden
      const qcDefault = questionLocator(page, 45);
      await expect(qcDefault).toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
    });
  });

  test.describe('Basculement vers "Non" — inversion de visibilite', () => {

    test('selectionner "Non" affiche QCNo et masque QCYes', async ({ page }) => {
      await goToConditionalPage(page);

      // First select "Oui" to establish a known state
      const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
      await ouiRadio.check({ force: true });
      await page.waitForTimeout(500);

      // Verify QCYes is visible before switching
      await expect(questionLocator(page, 43)).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });

      // Now select "Non"
      const nonRadio = questionLocator(page, 42).locator('input[type="radio"][value="N"]');
      await nonRadio.check({ force: true });
      await page.waitForTimeout(500);

      // QCNo (qid 44) should become visible
      const qcNo = questionLocator(page, 44);
      await expect(qcNo).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
      await expect(qcNo).toBeVisible();

      // QCYes (qid 43) should become hidden
      const qcYes = questionLocator(page, 43);
      await expect(qcYes).toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
    });
  });

  test.describe('ARIA live region — annonces de changement', () => {

    test('la live region existe dans le DOM', async ({ page }) => {
      await goToConditionalPage(page);

      const liveRegion = page.locator(S.conditionalLiveRegion);
      await expect(liveRegion).toBeAttached({ timeout: 10_000 });
      await expect(liveRegion).toHaveAttribute('aria-live', 'polite');
    });

    test('la live region annonce un changement apres basculement', async ({ page }) => {
      await goToConditionalPage(page);

      // Select "Oui" to trigger a visibility change
      const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
      await ouiRadio.check({ force: true });

      // Attendre que le MutationObserver (debounce 300ms) remplisse la live region
      // avant qu'elle soit vidée (auto-clear après 3s)
      const liveRegion = page.locator(S.conditionalLiveRegion);
      await expect(liveRegion).not.toHaveText('', { timeout: 5_000 });
    });
  });

  test.describe('ARIA descriptions — questions conditionnelles', () => {

    test('les questions conditionnelles ont un aria-describedby', async ({ page }) => {
      await goToConditionalPage(page);

      // Vérifier que custom.js a créé des descriptions conditionnelles
      // et les a liées aux champs via aria-describedby
      const descElements = page.locator('[id^="conditional-desc-"]');
      const descCount = await descElements.count();
      expect(descCount, 'Au moins une description conditionnelle devrait exister').toBeGreaterThan(0);

      // Vérifier qu'au moins un champ référence cette description
      let foundDescribedBy = false;
      for (let i = 0; i < descCount; i++) {
        const descId = await descElements.nth(i).getAttribute('id');
        if (!descId) continue;
        const linkedFields = page.locator(`[aria-describedby*="${descId}"]`);
        if ((await linkedFields.count()) > 0) {
          foundDescribedBy = true;
          break;
        }
      }
      expect(foundDescribedBy).toBe(true);
    });

    test('l\'element reference par aria-describedby contient du texte descriptif', async ({ page }) => {
      await goToConditionalPage(page);

      // Chercher tous les éléments de description conditionnelle créés par custom.js
      const descElements = page.locator('[id^="conditional-desc-"]');
      const count = await descElements.count();
      expect(count, 'Au moins un élément conditional-desc-* devrait exister').toBeGreaterThan(0);

      // Vérifier qu'au moins un contient du texte
      let foundDescription = false;
      for (let i = 0; i < count; i++) {
        const text = await descElements.nth(i).textContent();
        if (text && text.trim().length > 0) {
          foundDescription = true;
          break;
        }
      }
      expect(foundDescription).toBe(true);
    });
  });

  test.describe('Questions masquees — exclusion du focus', () => {

    test('les questions irrelevantes ont leurs inputs desactives ou hors tabulation', async ({ page }) => {
      await goToConditionalPage(page);

      // Ensure there are irrelevant questions on the page
      const irrelevantQuestions = page.locator(`.question-container${S.lsIrrelevant}`);
      const count = await irrelevantQuestions.count();
      expect(count).toBeGreaterThan(0);

      // Check that inputs inside irrelevant questions are excluded from tab order
      for (let i = 0; i < Math.min(count, 3); i++) {
        const q = irrelevantQuestions.nth(i);
        const inputs = q.locator('input:not([type="hidden"]), select, textarea');
        const inputCount = await inputs.count();

        for (let j = 0; j < inputCount; j++) {
          const input = inputs.nth(j);
          const isDisabled = await input.isDisabled().catch(() => false);
          const tabindex = await input.getAttribute('tabindex');
          const ariaHidden = await input.getAttribute('aria-hidden');

          // The input should be excluded from interaction via at least one mechanism:
          // disabled, tabindex="-1", aria-hidden="true", or the parent is display:none
          const isExcluded = isDisabled
            || tabindex === '-1'
            || ariaHidden === 'true'
            || !(await input.isVisible().catch(() => false));

          expect(isExcluded).toBe(true);
        }
      }
    });
  });
});
