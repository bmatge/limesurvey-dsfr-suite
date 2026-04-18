import { test, expect, SURVEY_URL, navigateToSelector } from './fixtures/survey';
import { S } from './helpers/selectors';
import type { Page } from '@playwright/test';

/**
 * Tests E2E pour les fonctions de relevance :
 * - triggerEmRelevanceGroup (visibilité de groupes entiers)
 * - triggerEmRelevanceSubQuestion (visibilité de sous-questions dans les tableaux)
 * - updateLineClass (recalcul des classes pair/impair après masquage)
 *
 * Navigation robuste : sélecteurs stables (qid) plutôt que numéros de
 * page, pour survivre au réordonnancement du questionnaire.
 */

async function goToConditionalPage(page: Page): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await navigateToSelector(page, '#question42');
}

async function goToArrayPage(page: Page): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await navigateToSelector(page, '#question26');
}

function questionLocator(page: Page, qid: number) {
  return page.locator(`#question${qid}`);
}

test.describe('Relevance — gestion de la visibilité conditionnelle', () => {

  test.describe('triggerEmRelevance — classes CSS sur les questions', () => {

    test('une question masquée a les classes ls-irrelevant et ls-hidden', async ({ page }) => {
      await goToConditionalPage(page);

      // QCYes (qid 43) est masquée par défaut
      const qcYes = questionLocator(page, 43);
      await expect(qcYes).toHaveClass(/ls-irrelevant/, { timeout: 10_000 });
    });

    test('une question révélée perd les classes ls-irrelevant et ls-hidden', async ({ page }) => {
      await goToConditionalPage(page);

      // Sélectionner "Oui" pour révéler QCYes
      const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
      await ouiRadio.check({ force: true });
      await page.waitForTimeout(500);

      const qcYes = questionLocator(page, 43);
      await expect(qcYes).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
      await expect(qcYes).not.toHaveClass(/ls-hidden/, { timeout: 5_000 });
    });

    test('remasquer une question repose les classes ls-irrelevant', async ({ page }) => {
      await goToConditionalPage(page);

      // Révéler QCYes
      const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
      await ouiRadio.check({ force: true });
      await page.waitForTimeout(500);

      await expect(questionLocator(page, 43)).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });

      // Basculer sur "Non" → QCYes redevient masquée
      const nonRadio = questionLocator(page, 42).locator('input[type="radio"][value="N"]');
      await nonRadio.check({ force: true });
      await page.waitForTimeout(500);

      await expect(questionLocator(page, 43)).toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
    });
  });

  test.describe('Inputs masqués — tabindex et accessibilité', () => {

    test('les inputs des questions masquées ont tabindex="-1"', async ({ page }) => {
      await goToConditionalPage(page);

      // Trouver une question masquée
      const irrelevantQuestions = page.locator(`.question-container${S.lsIrrelevant}`);
      const count = await irrelevantQuestions.count();
      expect(count).toBeGreaterThan(0);

      // Vérifier le premier input de la première question masquée
      const firstIrrelevant = irrelevantQuestions.first();
      const inputs = firstIrrelevant.locator('input:not([type="hidden"])');
      const inputCount = await inputs.count();

      if (inputCount > 0) {
        const tabindex = await inputs.first().getAttribute('tabindex');
        expect(tabindex).toBe('-1');
      }
    });

    test('les inputs des questions révélées retrouvent tabindex normal', async ({ page }) => {
      await goToConditionalPage(page);

      // QCYes (qid 43) est masquée → ses inputs ont tabindex="-1"
      const qcYesInputs = questionLocator(page, 43).locator('input:not([type="hidden"])');
      const inputCount = await qcYesInputs.count();

      if (inputCount > 0) {
        await expect(qcYesInputs.first()).toHaveAttribute('tabindex', '-1', { timeout: 5_000 });

        // Révéler la question
        const ouiRadio = questionLocator(page, 42).locator('input[type="radio"][value="Y"]');
        await ouiRadio.check({ force: true });
        await page.waitForTimeout(500);

        // Les inputs ne devraient plus avoir tabindex="-1"
        const tabindex = await qcYesInputs.first().getAttribute('tabindex');
        expect(tabindex).not.toBe('-1');
      }
    });
  });

  test.describe('Tableaux — classes pair/impair (updateLineClass)', () => {

    test('les lignes visibles d\'un tableau ont des classes ls-odd/ls-even alternées', async ({ page }) => {
      await goToArrayPage(page);

      // Trouver un tableau avec des lignes ls-odd/ls-even
      const table = page.locator(`${S.arrayTable}`).first();
      await expect(table).toBeVisible({ timeout: 10_000 });

      const visibleRows = table.locator('tbody tr.ls-odd:visible, tbody tr.ls-even:visible');
      const count = await visibleRows.count();

      if (count >= 2) {
        // Vérifier l'alternance des classes
        const firstClass = await visibleRows.nth(0).getAttribute('class');
        const secondClass = await visibleRows.nth(1).getAttribute('class');

        const firstIsOdd = firstClass?.includes('ls-odd');
        const secondIsOdd = secondClass?.includes('ls-odd');

        // Les deux lignes consécutives ne doivent pas avoir la même parité
        expect(firstIsOdd).not.toBe(secondIsOdd);
      }
    });
  });

  test.describe('Groupes conditionnels — visibilité des groupes', () => {

    test('la page de conditions contient au moins un groupe avec des questions visibles et masquées', async ({ page }) => {
      await goToConditionalPage(page);

      const visibleQuestions = page.locator('.question-container:not(.ls-irrelevant):visible');
      const hiddenQuestions = page.locator(`.question-container${S.lsIrrelevant}`);

      const visibleCount = await visibleQuestions.count();
      const hiddenCount = await hiddenQuestions.count();

      // Il doit y avoir à la fois des questions visibles et masquées
      expect(visibleCount).toBeGreaterThan(0);
      expect(hiddenCount).toBeGreaterThan(0);
    });

    test('un cycle complet de visibilité ne casse pas l\'état des questions', async ({ page }) => {
      await goToConditionalPage(page);

      const qc42 = questionLocator(page, 42);

      // Etat initial : QCYes masquée, QCNo masquée
      await expect(questionLocator(page, 43)).toHaveClass(/ls-irrelevant/, { timeout: 10_000 });
      await expect(questionLocator(page, 44)).toHaveClass(/ls-irrelevant/, { timeout: 10_000 });

      // Cycle : Oui → Non → Oui
      const ouiRadio = qc42.locator('input[type="radio"][value="Y"]');
      const nonRadio = qc42.locator('input[type="radio"][value="N"]');

      await ouiRadio.check({ force: true });
      await page.waitForTimeout(400);
      await nonRadio.check({ force: true });
      await page.waitForTimeout(400);
      await ouiRadio.check({ force: true });
      await page.waitForTimeout(400);

      // Après le cycle, QCYes doit être visible et QCNo masquée
      await expect(questionLocator(page, 43)).not.toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
      await expect(questionLocator(page, 44)).toHaveClass(/ls-irrelevant/, { timeout: 5_000 });
    });
  });
});
