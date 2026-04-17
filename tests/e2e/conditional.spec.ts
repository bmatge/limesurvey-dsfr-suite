import { test, expect, SURVEY_URL, advancePages } from './fixtures/survey';
import { S } from './helpers/selectors';

/**
 * Navigate to page 6 (gid=5, "Conditions et scenarios").
 * From the survey start: welcome page + 5 group pages = 6 clicks on "Suivant".
 */
async function goToConditionalPage(page: import('@playwright/test').Page): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await advancePages(page, 6);
}

/** Locator for question container by qid. */
function questionLocator(page: import('@playwright/test').Page, qid: number) {
  return page.locator(`#question${qid}`);
}

test.describe('Conditions et scenarios — questions conditionnelles (page 6)', () => {

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

      // Wait for the MutationObserver to fire and update the live region
      await page.waitForTimeout(1000);

      const liveRegion = page.locator(S.conditionalLiveRegion);
      const textContent = await liveRegion.textContent();
      expect(textContent?.trim().length).toBeGreaterThan(0);
    });
  });

  test.describe('ARIA descriptions — questions conditionnelles', () => {

    test('les questions conditionnelles ont un aria-describedby', async ({ page }) => {
      await goToConditionalPage(page);

      // Find conditional questions (those with data-relevance attribute, excluding the trigger question itself)
      const conditionalQuestions = page.locator(`${S.conditionalQuestion}:not(${S.lsIrrelevant})`);
      const count = await conditionalQuestions.count();
      expect(count).toBeGreaterThan(0);

      // Check at least one conditional question has aria-describedby on its form fields
      let foundDescribedBy = false;
      for (let i = 0; i < count; i++) {
        const q = conditionalQuestions.nth(i);
        const fields = q.locator('input:not([type="hidden"]), select, textarea');
        const fieldCount = await fields.count();
        for (let j = 0; j < fieldCount; j++) {
          const describedBy = await fields.nth(j).getAttribute('aria-describedby');
          if (describedBy && describedBy.trim().length > 0) {
            foundDescribedBy = true;
            break;
          }
        }
        if (foundDescribedBy) break;
      }
      expect(foundDescribedBy).toBe(true);
    });

    test('l\'element reference par aria-describedby contient du texte descriptif', async ({ page }) => {
      await goToConditionalPage(page);

      // Find a conditional question with aria-describedby
      const conditionalQuestions = page.locator(S.conditionalQuestion);
      const count = await conditionalQuestions.count();

      let foundDescription = false;
      for (let i = 0; i < count; i++) {
        const q = conditionalQuestions.nth(i);
        const field = q.locator('input:not([type="hidden"]), select, textarea').first();
        if (await field.count() === 0) continue;

        const describedBy = await field.getAttribute('aria-describedby');
        if (!describedBy) continue;

        // Check each referenced ID
        const ids = describedBy.split(/\s+/).filter(Boolean);
        for (const id of ids) {
          const refElement = page.locator(`#${CSS.escape(id)}`);
          if (await refElement.count() > 0) {
            const text = await refElement.textContent();
            if (text && text.trim().length > 0) {
              foundDescription = true;
              break;
            }
          }
        }
        if (foundDescription) break;
      }
      expect(foundDescription).toBe(true);
    });
  });

  test.describe('Questions masquees — exclusion du focus', () => {

    test('les questions irrelevantes ont leurs inputs desactives ou hors tabulation', async ({ page }) => {
      await goToConditionalPage(page);

      // Ensure there are irrelevant questions on the page
      const irrelevantQuestions = page.locator(`${S.conditionalQuestion}${S.lsIrrelevant}`);
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
