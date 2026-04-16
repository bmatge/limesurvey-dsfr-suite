import { test, expect, SURVEY_URL } from './fixtures/survey';
import { S } from './helpers/selectors';

test.describe('Smoke — questionnaire RGAA charge et fonctionne', () => {
  test('la page d\'accueil du questionnaire se charge sans erreur JS', async ({ page }) => {
    const jsErrors: string[] = [];
    page.on('pageerror', (err) => jsErrors.push(err.message));

    await page.goto(SURVEY_URL);
    await page.waitForLoadState('networkidle');

    // Le header DSFR est visible
    await expect(page.locator('.fr-header')).toBeVisible();

    const fatalErrors = jsErrors.filter(
      (msg) => !msg.includes('bootstrap') && !msg.includes('jQuery')
    );
    expect(fatalErrors).toEqual([]);
  });

  test('navigation à travers tous les groupes sans crash', async ({ page }) => {
    const jsErrors: string[] = [];
    page.on('pageerror', (err) => jsErrors.push(err.message));

    await page.goto(SURVEY_URL);
    await page.waitForLoadState('networkidle');

    let pageCount = 0;
    const maxPages = 20;

    while (pageCount < maxPages) {
      // LimeSurvey utilise le même #ls-button-submit pour Next et Submit final.
      // On distingue par la value : "movenext" = suivant, "movesubmit" = envoyer.
      const nextBtn = page.locator('#ls-button-submit[value="movenext"]');
      const finalSubmitBtn = page.locator('#ls-button-submit[value="movesubmit"]');

      if (await finalSubmitBtn.isVisible().catch(() => false)) {
        // Dernière page atteinte
        break;
      }

      if (await nextBtn.isVisible().catch(() => false)) {
        await nextBtn.click();
        await page.waitForLoadState('networkidle');
        pageCount++;
      } else {
        break;
      }
    }

    expect(pageCount).toBeGreaterThan(0);

    const fatalErrors = jsErrors.filter(
      (msg) => !msg.includes('bootstrap') && !msg.includes('jQuery')
    );
    expect(fatalErrors).toEqual([]);
  });

  test('le thème DSFR est bien appliqué', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('networkidle');

    await expect(page.locator('.fr-header')).toBeVisible();
    await expect(page.locator('.fr-footer')).toBeVisible();
    await expect(page.locator('.fr-skiplinks')).toBeAttached();
  });

  test('les scripts custom.js sont chargés', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('networkidle');

    const hasCustomJs = await page.evaluate(() => {
      return typeof (window as any).triggerEmRelevance === 'function';
    });
    expect(hasCustomJs).toBe(true);
  });

  test('les questions DSFR sont rendues après la page de bienvenue', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('networkidle');

    // Passer la page de bienvenue en cliquant "Suivant"
    const nextBtn = page.locator('#ls-button-submit[value="movenext"]');
    if (await nextBtn.isVisible().catch(() => false)) {
      await nextBtn.click();
      await page.waitForLoadState('networkidle');
    }

    // Maintenant on devrait être sur une page avec des questions
    const questionContainers = page.locator(S.questionContainer);
    await expect(questionContainers.first()).toBeVisible({ timeout: 10_000 });

    // Les questions ont la classe dsfr-question
    const dsfrQuestions = page.locator('.dsfr-question');
    const count = await dsfrQuestions.count();
    expect(count).toBeGreaterThan(0);
  });
});
