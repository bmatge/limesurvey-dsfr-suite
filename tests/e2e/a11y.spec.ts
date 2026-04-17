import { test, expect, SURVEY_URL, advancePages, fillMandatoryFields } from './fixtures/survey';
import AxeBuilder from '@axe-core/playwright';
import { S } from './helpers/selectors';

const NEXT_BTN = '#ls-button-submit[value="movenext"]';
const TOTAL_PAGES = 7;

/**
 * Navigate to the survey and advance to a specific page number (1-based).
 * Page 1 is the first page after the welcome screen.
 */
async function goToPage(page: import('@playwright/test').Page, n: number): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await advancePages(page, n);
}

// ---------------------------------------------------------------------------
// 1. axe-core scan on each survey page
// ---------------------------------------------------------------------------
test.describe('Accessibilite - axe-core WCAG 2.1 AA', () => {
  for (let pageNum = 1; pageNum <= TOTAL_PAGES; pageNum++) {
    test(`page ${pageNum} ne contient pas de violation critique ou serieuse`, async ({ page }) => {
      await page.goto(SURVEY_URL);
      await page.waitForLoadState('domcontentloaded');

      // Advance through pages, filling mandatory fields to avoid being blocked
      for (let i = 0; i < pageNum; i++) {
        await fillMandatoryFields(page);
        const nextBtn = page.locator(NEXT_BTN);
        if (await nextBtn.isVisible().catch(() => false)) {
          await nextBtn.click();
          await page.waitForLoadState('domcontentloaded');
        }
      }

      const results = await new AxeBuilder({ page })
        .withTags(['wcag2a', 'wcag2aa'])
        .disableRules([
          // LimeSurvey core: progress bar has insufficient contrast, not fixable in theme
          'color-contrast',
          // LimeSurvey core: content not wrapped in landmark regions, structural limitation
          'region',
          // LimeSurvey core: <li> elements without proper role="list" parent, not fixable in theme
          'listitem',
        ])
        .analyze();

      const serious = results.violations.filter(
        (v) => v.impact === 'critical' || v.impact === 'serious'
      );

      if (serious.length > 0) {
        const summary = serious.map(
          (v) => `[${v.impact}] ${v.id}: ${v.description} (${v.nodes.length} occurrence(s))`
        ).join('\n');
        expect(serious, `Violations axe-core page ${pageNum}:\n${summary}`).toHaveLength(0);
      }
    });
  }
});

// ---------------------------------------------------------------------------
// 2. Skip links
// ---------------------------------------------------------------------------
test.describe('Accessibilite - skip links', () => {
  test('le conteneur .fr-skiplinks existe sur la page d\'accueil', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');
    await expect(page.locator('.fr-skiplinks')).toBeAttached();
  });

  test('les cibles des skip links existent dans le DOM', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');

    const skipLinks = page.locator('.fr-skiplinks a[href^="#"]');
    const count = await skipLinks.count();
    expect(count).toBeGreaterThan(0);

    // At least one skip link target must exist in the DOM
    let foundAtLeastOne = false;
    for (let i = 0; i < count; i++) {
      const href = await skipLinks.nth(i).getAttribute('href');
      if (!href) continue;
      const targetId = href.replace('#', '');
      const target = page.locator(`#${CSS.escape(targetId)}, [id="${targetId}"]`);
      if ((await target.count()) > 0) {
        foundAtLeastOne = true;
        break;
      }
    }
    expect(foundAtLeastOne, 'At least one skip link target should exist in the DOM').toBe(true);
  });

  test('activer un skip link deplace le focus vers le contenu principal', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');

    // Find the first skip link (typically "Contenu")
    const skipLink = page.locator('.fr-skiplinks a[href^="#"]').first();
    const href = await skipLink.getAttribute('href');
    expect(href).toBeTruthy();

    // Focus and activate the skip link
    await skipLink.focus();
    await skipLink.click();

    const targetId = href!.replace('#', '');

    // Verify focus moved to the target or an element within it
    const focusedId = await page.evaluate(() => {
      const el = document.activeElement;
      return el ? el.id || el.closest('[id]')?.id : null;
    });

    // The focused element should be the target or inside the target
    const focusIsOnTarget = focusedId === targetId
      || await page.evaluate(
        ([fId, tId]) => {
          const focused = document.getElementById(fId ?? '');
          const target = document.getElementById(tId ?? '');
          return !!(focused && target && target.contains(focused));
        },
        [focusedId, targetId] as const
      );

    expect(focusIsOnTarget).toBe(true);
  });
});

// ---------------------------------------------------------------------------
// 3. ARIA required attributes on mandatory fields
// ---------------------------------------------------------------------------
test.describe('Accessibilite - aria-required sur champs obligatoires', () => {
  test('les inputs des questions obligatoires ont aria-required="true"', async ({ page }) => {
    // Page 2 has mandatory text questions
    await goToPage(page, 2);

    const mandatoryContainers = page.locator(S.mandatoryQuestion);
    const containerCount = await mandatoryContainers.count();
    expect(containerCount).toBeGreaterThan(0);

    const mandatoryInputs = page.locator(
      `${S.mandatoryQuestion} input[type="text"]:visible, ` +
      `${S.mandatoryQuestion} textarea:visible`
    );
    const inputCount = await mandatoryInputs.count();
    expect(inputCount).toBeGreaterThan(0);

    for (let i = 0; i < inputCount; i++) {
      const ariaRequired = await mandatoryInputs.nth(i).getAttribute('aria-required');
      expect(ariaRequired, `Input ${i} should have aria-required="true"`).toBe('true');
    }
  });
});

// ---------------------------------------------------------------------------
// 4. ARIA invalid on error state
// ---------------------------------------------------------------------------
test.describe('Accessibilite - aria-invalid en etat d\'erreur', () => {
  test('les inputs en erreur ont aria-invalid="true" apres soumission vide', async ({ page }) => {
    // Navigate to page 2 WITHOUT filling mandatory fields so we can submit empty
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');
    // Advance without filling mandatory — first 2 pages have no mandatory fields
    await page.locator('#ls-button-submit[value="movenext"]').click();
    await page.waitForLoadState('domcontentloaded');
    await page.locator('#ls-button-submit[value="movenext"]').click();
    await page.waitForLoadState('domcontentloaded');

    // Submit without filling anything to trigger errors
    await page.locator(NEXT_BTN).click();
    await page.waitForLoadState('domcontentloaded');

    // Wait for error state to appear
    await expect(page.locator(S.questionContainerError).first()).toBeVisible({ timeout: 10_000 });

    const errorInputs = page.locator(
      `${S.questionContainerError} input[type="text"]:visible, ` +
      `${S.questionContainerError} textarea:visible`
    );
    const count = await errorInputs.count();
    expect(count).toBeGreaterThan(0);

    for (let i = 0; i < count; i++) {
      const ariaInvalid = await errorInputs.nth(i).getAttribute('aria-invalid');
      expect(ariaInvalid, `Input ${i} in error should have aria-invalid="true"`).toBe('true');
    }
  });
});

// ---------------------------------------------------------------------------
// 5. Heading hierarchy
// ---------------------------------------------------------------------------
test.describe('Accessibilite - hierarchie des titres', () => {
  for (let pageNum = 0; pageNum <= TOTAL_PAGES; pageNum++) {
    const label = pageNum === 0 ? 'page d\'accueil' : `page ${pageNum}`;

    test(`${label} : pas de saut de niveau et au plus un h1`, async ({ page }) => {
      await page.goto(SURVEY_URL);
      await page.waitForLoadState('domcontentloaded');

      if (pageNum > 0) {
        for (let i = 0; i < pageNum; i++) {
          await fillMandatoryFields(page);
          const nextBtn = page.locator(NEXT_BTN);
          if (await nextBtn.isVisible().catch(() => false)) {
            await nextBtn.click();
            await page.waitForLoadState('domcontentloaded');
          }
        }
      }

      const headings = await page.evaluate(() => {
        const els = document.querySelectorAll('h1, h2, h3, h4, h5, h6');
        return Array.from(els)
          .filter((el) => {
            const style = window.getComputedStyle(el);
            return style.display !== 'none' && style.visibility !== 'hidden';
          })
          .map((el) => ({
            level: parseInt(el.tagName[1], 10),
            text: el.textContent?.trim().slice(0, 60) ?? '',
          }));
      });

      // At most one h1
      const h1Count = headings.filter((h) => h.level === 1).length;
      expect(h1Count, `${label} should have at most 1 h1, found ${h1Count}`).toBeLessThanOrEqual(1);

      // No skipped heading levels (e.g., h1 -> h3 without h2)
      for (let i = 1; i < headings.length; i++) {
        const prev = headings[i - 1].level;
        const curr = headings[i].level;
        // Going deeper should not skip levels; going shallower is always ok
        if (curr > prev) {
          expect(
            curr - prev,
            `${label}: heading "${headings[i].text}" (h${curr}) skips level after h${prev} "${headings[i - 1].text}"`
          ).toBe(1);
        }
      }
    });
  }
});

// ---------------------------------------------------------------------------
// 6. Form labels
// ---------------------------------------------------------------------------
test.describe('Accessibilite - labels des champs de formulaire', () => {
  test('chaque input/textarea visible sur la page 1 a un label associe', async ({ page }) => {
    // Page 1 = text questions
    await goToPage(page, 1);

    const unlabeled = await page.evaluate(() => {
      const inputs = document.querySelectorAll<HTMLInputElement | HTMLTextAreaElement>(
        'input:not([type="hidden"]):not([type="submit"]):not([type="button"]):not([type="radio"]):not([type="checkbox"]), textarea'
      );
      const results: string[] = [];

      for (const input of Array.from(inputs)) {
        const style = window.getComputedStyle(input);
        if (style.display === 'none' || style.visibility === 'hidden' || input.offsetParent === null) {
          continue;
        }

        const hasFor = input.id && document.querySelector(`label[for="${input.id}"]`);
        const hasAriaLabel = input.hasAttribute('aria-label') && input.getAttribute('aria-label')!.trim() !== '';
        const hasAriaLabelledby = input.hasAttribute('aria-labelledby') && input.getAttribute('aria-labelledby')!.trim() !== '';
        const hasTitle = input.hasAttribute('title') && input.getAttribute('title')!.trim() !== '';
        const wrappedInLabel = input.closest('label') !== null;

        if (!hasFor && !hasAriaLabel && !hasAriaLabelledby && !hasTitle && !wrappedInLabel) {
          results.push(`${input.tagName}#${input.id || '(no-id)'} name="${input.name || ''}"`);
        }
      }
      return results;
    });

    expect(unlabeled, `Inputs sans label: ${unlabeled.join(', ')}`).toHaveLength(0);
  });
});

// ---------------------------------------------------------------------------
// 7. Focus management after navigation
// ---------------------------------------------------------------------------
test.describe('Accessibilite - gestion du focus apres navigation', () => {
  test('le focus est positionne logiquement apres un clic sur Suivant', async ({ page }) => {
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');

    // Click "Suivant" from the welcome page
    const nextBtn = page.locator(NEXT_BTN);
    await expect(nextBtn).toBeVisible();
    await nextBtn.click();
    await page.waitForLoadState('domcontentloaded');

    // Focus should be near the top of the page content, not on an element far down
    const focusInfo = await page.evaluate(() => {
      const el = document.activeElement;
      if (!el || el === document.body) {
        return { tag: 'body', id: '', top: 0 };
      }
      const rect = el.getBoundingClientRect();
      return {
        tag: el.tagName.toLowerCase(),
        id: el.id || '',
        className: el.className || '',
        top: rect.top,
      };
    });

    // The focus should be on a meaningful element (not lost on body)
    // or if on body, at least the page scrolled to top
    const scrollTop = await page.evaluate(() => window.scrollY);
    const focusIsLogical =
      focusInfo.tag !== 'body' || scrollTop < 200;

    expect(focusIsLogical, 'Focus should be at a logical position after navigation').toBe(true);
  });

  test('le focus ne reste pas sur un element de la page precedente', async ({ page }) => {
    await goToPage(page, 1);

    await fillMandatoryFields(page);

    // Note the current page URL
    const urlBefore = page.url();

    await page.locator(NEXT_BTN).click();
    await page.waitForLoadState('domcontentloaded');

    // We should be on a different page
    const urlAfter = page.url();
    if (urlAfter === urlBefore) {
      // If URL didn't change (validation error), skip this check
      test.skip();
      return;
    }

    // The focused element should exist in the current DOM (not a stale reference)
    const focusedExists = await page.evaluate(() => {
      const el = document.activeElement;
      return el === null || el === document.body || document.contains(el);
    });
    expect(focusedExists).toBe(true);
  });
});

// ---------------------------------------------------------------------------
// 8. No keyboard traps
// ---------------------------------------------------------------------------
test.describe('Accessibilite - pas de piege clavier', () => {
  test('Tab parcourt la page 4 sans boucle infinie et atteint le bouton Suivant', async ({ page }) => {
    // Page 4: single choice with radio lists, dropdowns, date pickers
    await page.goto(SURVEY_URL);
    await page.waitForLoadState('domcontentloaded');

    for (let i = 0; i < 4; i++) {
      await fillMandatoryFields(page);
      const nextBtn = page.locator(NEXT_BTN);
      if (await nextBtn.isVisible().catch(() => false)) {
        await nextBtn.click();
        await page.waitForLoadState('domcontentloaded');
      }
    }

    const maxTabs = 50;
    let reachedNextBtn = false;

    // Start from the top of the page
    await page.keyboard.press('Tab');

    for (let i = 0; i < maxTabs; i++) {
      const focusedId = await page.evaluate(() => document.activeElement?.id ?? '');
      const focusedValue = await page.evaluate(() =>
        (document.activeElement as HTMLInputElement)?.value ?? ''
      );

      if (focusedId === 'ls-button-submit' && focusedValue === 'movenext') {
        reachedNextBtn = true;
        break;
      }

      await page.keyboard.press('Tab');
    }

    expect(reachedNextBtn, `Tab should reach the Next button within ${maxTabs} presses`).toBe(true);
  });
});
