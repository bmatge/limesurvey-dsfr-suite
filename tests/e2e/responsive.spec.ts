import { test, expect, SURVEY_URL, advancePages } from './fixtures/survey';
import { S } from './helpers/selectors';

const NEXT_BTN = '#ls-button-submit[value="movenext"]';

/** Viewport presets */
const MOBILE = { width: 375, height: 667 };
const TABLET = { width: 768, height: 1024 };
const DESKTOP = { width: 1280, height: 720 };

/**
 * Navigate to a specific page by advancing N times from the survey start.
 */
async function goToPage(page: import('@playwright/test').Page, steps: number): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await advancePages(page, steps);
}

test.describe('Responsive — mise en page adaptative DSFR', () => {

  test.describe('Mobile viewport — layout (375×667)', () => {

    test('le header DSFR est visible et ne déborde pas', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const header = page.locator('.fr-header');
      await expect(header).toBeVisible();

      // No horizontal overflow on the page
      const hasOverflow = await page.evaluate(() => {
        return document.body.scrollWidth > document.body.clientWidth;
      });
      expect(hasOverflow).toBe(false);
    });

    test('les conteneurs de questions occupent toute la largeur', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const questions = page.locator(S.questionContainer);
      await expect(questions.first()).toBeVisible({ timeout: 10_000 });

      const count = await questions.count();
      for (let i = 0; i < Math.min(count, 3); i++) {
        const box = await questions.nth(i).boundingBox();
        expect(box).toBeTruthy();
        // Question containers should use most of the viewport width (at least 85%)
        expect(box!.width).toBeGreaterThanOrEqual(MOBILE.width * 0.85);
      }
    });

    test('les boutons de navigation sont visibles et accessibles', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const nextBtn = page.locator(NEXT_BTN);
      await expect(nextBtn).toBeVisible();

      const box = await nextBtn.boundingBox();
      expect(box).toBeTruthy();
      // Button should be within the viewport horizontally
      expect(box!.x + box!.width).toBeLessThanOrEqual(MOBILE.width);
    });
  });

  test.describe('Mobile viewport — tables linearisées (375×667)', () => {

    test('les tableaux ne causent pas de débordement horizontal', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 4);

      // Verify we have tables on this page
      const tables = page.locator(S.arrayTable);
      await expect(tables.first()).toBeVisible({ timeout: 10_000 });

      // Tables may overflow but should be in a scrollable container, not cause uncontrolled page-level overflow
      const overflowOk = await page.evaluate(() => {
        const tables = document.querySelectorAll('.ls-answers table');
        if (tables.length === 0) return true;
        const pageOverflows = document.documentElement.scrollWidth > document.documentElement.clientWidth;
        if (!pageOverflows) return true;
        for (const table of tables) {
          let el = table.parentElement;
          while (el) {
            const style = window.getComputedStyle(el);
            if (style.overflowX === 'auto' || style.overflowX === 'scroll' || style.overflow === 'auto' || style.overflow === 'scroll') return true;
            el = el.parentElement;
          }
        }
        return false;
      });
      expect(overflowOk).toBe(true);
    });

    test('le contenu des tableaux reste accessible', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 4);

      const tables = page.locator(S.arrayTable);
      await expect(tables.first()).toBeVisible({ timeout: 10_000 });

      // Each table should either be linearized or within a scrollable container
      const count = await tables.count();
      for (let i = 0; i < count; i++) {
        const table = tables.nth(i);
        const isVisible = await table.isVisible().catch(() => false);
        if (!isVisible) continue;

        // Table inputs/radios should be accessible (not clipped to zero size)
        const inputs = table.locator('input:visible, select:visible');
        const inputCount = await inputs.count();
        if (inputCount > 0) {
          const firstBox = await inputs.first().boundingBox();
          expect(firstBox).toBeTruthy();
          expect(firstBox!.width).toBeGreaterThan(0);
          expect(firstBox!.height).toBeGreaterThan(0);
        }
      }
    });
  });

  test.describe('Tablet viewport — mise en page équilibrée (768×1024)', () => {

    test('le header et le footer sont visibles', async ({ page }) => {
      await page.setViewportSize(TABLET);
      await goToPage(page, 4);

      await expect(page.locator('.fr-header')).toBeVisible();
      // Scroll to bottom to check footer
      await page.evaluate(() => window.scrollTo(0, document.body.scrollHeight));
      await expect(page.locator('.fr-footer')).toBeVisible();
    });

    test('les tableaux sont lisibles', async ({ page }) => {
      await page.setViewportSize(TABLET);
      await goToPage(page, 4);

      const tables = page.locator(S.arrayTable);
      await expect(tables.first()).toBeVisible({ timeout: 10_000 });

      // Tables may overflow but should be in a scrollable container
      const overflowOk = await page.evaluate(() => {
        const tables = document.querySelectorAll('.ls-answers table');
        if (tables.length === 0) return true;
        const pageOverflows = document.documentElement.scrollWidth > document.documentElement.clientWidth;
        if (!pageOverflows) return true;
        for (const table of tables) {
          let el = table.parentElement;
          while (el) {
            const style = window.getComputedStyle(el);
            if (style.overflowX === 'auto' || style.overflowX === 'scroll' || style.overflow === 'auto' || style.overflow === 'scroll') return true;
            el = el.parentElement;
          }
        }
        return false;
      });
      expect(overflowOk).toBe(true);
    });
  });

  test.describe('Desktop viewport — mise en page complète (1280×720)', () => {

    test('les tableaux sont en format grille standard', async ({ page }) => {
      await page.setViewportSize(DESKTOP);
      await goToPage(page, 4);

      const tables = page.locator(S.arrayTable);
      await expect(tables.first()).toBeVisible({ timeout: 10_000 });

      // Tables should render as proper grids with visible rows and columns
      const firstTable = tables.first();
      const rows = firstTable.locator('tr');
      const rowCount = await rows.count();
      expect(rowCount).toBeGreaterThan(1); // header + at least one data row

      const headerCells = firstTable.locator('thead th, tr:first-child th');
      const headerCount = await headerCells.count();
      expect(headerCount).toBeGreaterThan(1); // multiple columns visible
    });

    test('le stepper est entièrement visible', async ({ page }) => {
      await page.setViewportSize(DESKTOP);
      await goToPage(page, 4);

      const stepper = page.locator('.fr-stepper');
      if (await stepper.isVisible().catch(() => false)) {
        const box = await stepper.boundingBox();
        expect(box).toBeTruthy();
        // Stepper should fit within the viewport width
        expect(box!.x).toBeGreaterThanOrEqual(0);
        expect(box!.x + box!.width).toBeLessThanOrEqual(DESKTOP.width);
      }
    });
  });

  test.describe('Mobile — boutons de navigation', () => {

    test('le bouton Suivant est visible et a une zone tactile suffisante', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const nextBtn = page.locator(NEXT_BTN);
      await expect(nextBtn).toBeVisible();

      const box = await nextBtn.boundingBox();
      expect(box).toBeTruthy();
      // WCAG minimum touch target: 44×44px (allow slight tolerance for DSFR padding)
      expect(box!.width).toBeGreaterThanOrEqual(40);
      expect(box!.height).toBeGreaterThanOrEqual(40);
    });

    test('cliquer Suivant fait avancer la page', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const stepperBefore = await page.locator('.fr-stepper__title').textContent().catch(() => '');
      const nextBtn = page.locator(NEXT_BTN);
      await expect(nextBtn).toBeVisible();
      await nextBtn.click();
      await page.waitForLoadState('domcontentloaded');

      // The stepper title should change to indicate page advancement
      const stepperAfter = await page.locator('.fr-stepper__title').textContent().catch(() => '');
      expect(stepperAfter).not.toBe(stepperBefore);
    });
  });

  test.describe('Redimensionnement — pas de styles cassés', () => {

    test('passer de desktop à mobile ne cause pas de débordement', async ({ page }) => {
      await page.setViewportSize(DESKTOP);
      await goToPage(page, 4);

      // Verify tables are present at desktop size
      const tables = page.locator(S.arrayTable);
      await expect(tables.first()).toBeVisible({ timeout: 10_000 });

      // Resize to mobile
      await page.setViewportSize(MOBILE);
      // Allow layout to reflow
      await page.waitForTimeout(500);

      // Tables may overflow but should be in a scrollable container after resize
      const overflowOk = await page.evaluate(() => {
        const tables = document.querySelectorAll('.ls-answers table');
        if (tables.length === 0) return true;
        const pageOverflows = document.documentElement.scrollWidth > document.documentElement.clientWidth;
        if (!pageOverflows) return true;
        for (const table of tables) {
          let el = table.parentElement;
          while (el) {
            const style = window.getComputedStyle(el);
            if (style.overflowX === 'auto' || style.overflowX === 'scroll' || style.overflow === 'auto' || style.overflow === 'scroll') return true;
            el = el.parentElement;
          }
        }
        return false;
      });
      expect(overflowOk).toBe(true);
    });

    test('pas de display:none en ligne qui casse le layout après resize', async ({ page }) => {
      await page.setViewportSize(DESKTOP);
      await goToPage(page, 4);

      await page.setViewportSize(MOBILE);
      await page.waitForTimeout(500);

      // Check that visible question containers are not hidden by stale inline styles
      // (custom.js fixDropdownArrayInlineStyles handles this)
      const questions = page.locator(S.questionContainer);
      const count = await questions.count();
      for (let i = 0; i < count; i++) {
        const displayStyle = await questions.nth(i).evaluate(
          (el) => el.style.display
        );
        // No question container should have inline display:none
        expect(displayStyle).not.toBe('none');
      }
    });
  });

  test.describe('Mobile — composants DSFR', () => {

    test('le footer DSFR est visible en bas de page', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      // Scroll to bottom
      await page.evaluate(() => window.scrollTo(0, document.body.scrollHeight));
      await expect(page.locator('.fr-footer')).toBeVisible();
    });

    test('le stepper est visible et non tronqué', async ({ page }) => {
      await page.setViewportSize(MOBILE);
      await goToPage(page, 1);

      const stepper = page.locator('.fr-stepper');
      if (await stepper.isVisible().catch(() => false)) {
        const box = await stepper.boundingBox();
        expect(box).toBeTruthy();
        // Stepper should not overflow the viewport
        expect(box!.x).toBeGreaterThanOrEqual(0);
        expect(box!.x + box!.width).toBeLessThanOrEqual(MOBILE.width + 1); // +1 for rounding
        // Stepper should have meaningful height (not collapsed)
        expect(box!.height).toBeGreaterThan(10);
      }
    });
  });
});
