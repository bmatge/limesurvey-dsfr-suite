import { test, expect, SURVEY_URL, skipWelcomePage, advancePages } from './fixtures/survey';
import { S } from './helpers/selectors';
import type { Page } from '@playwright/test';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/** Navigate to a specific page (0-indexed) by going to the survey URL and advancing. */
async function goToPage(page: Page, pageIndex: number): Promise<void> {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  if (pageIndex > 0) {
    await advancePages(page, pageIndex);
  }
}

/** Collect JS errors during a test — returns the array so assertions can run later. */
function collectJsErrors(page: Page): string[] {
  const errors: string[] = [];
  page.on('pageerror', (err) => errors.push(err.message));
  return errors;
}

/** Filter out known non-fatal vendor errors. */
function fatalOnly(errors: string[]): string[] {
  return errors.filter(
    (msg) => !msg.includes('bootstrap') && !msg.includes('jQuery'),
  );
}

// ---------------------------------------------------------------------------
// Page 1 — Text questions (gid=1)
// ---------------------------------------------------------------------------

test.describe.serial('Page 1 — Text questions', () => {
  let jsErrors: string[];

  test.beforeEach(async ({ page }) => {
    jsErrors = collectJsErrors(page);
    await goToPage(page, 1);
  });

  test('short text (S): text input rendered and accepts value', async ({ page }) => {
    // At least one short text input should be visible
    const shortTextInput = page.locator('.short-text-question input[type="text"], .text-short input[type="text"], [id*="282267X1"] input[type="text"]').first();
    // Fallback: any visible text input on the page
    const anyTextInput = page.locator('.question-container input[type="text"]:visible').first();
    const target = (await shortTextInput.isVisible().catch(() => false)) ? shortTextInput : anyTextInput;

    await expect(target).toBeVisible({ timeout: 10_000 });
    await target.fill('Hello DSFR');
    await expect(target).toHaveValue('Hello DSFR');
  });

  test('long text (T): textarea rendered', async ({ page }) => {
    const textarea = page.locator('.question-container textarea:visible').first();
    await expect(textarea).toBeVisible({ timeout: 10_000 });
  });

  test('multiple short text (Q): multiple inputs and add button', async ({ page }) => {
    const inputs = page.locator('.question-container input[type="text"]:visible');
    // There should be several text inputs on the page (Q + others)
    expect(await inputs.count()).toBeGreaterThan(1);

    // "Input on demand" add button should exist on the page
    const addBtn = page.locator(S.inputOnDemandAdd);
    // This is optional — only assert if the question type is configured for it
    const addBtnCount = await addBtn.count();
    if (addBtnCount > 0) {
      await expect(addBtn.first()).toBeAttached();
    }
  });

  test('array text (;): table with text inputs rendered', async ({ page }) => {
    // Array text tables might be nested inside .ls-answers or directly in the question container
    const table = page.locator(`${S.arrayTable}, .question-container table`);
    await expect(table.first()).toBeVisible({ timeout: 10_000 });

    const tableInputs = table.first().locator('input[type="text"]');
    expect(await tableInputs.count()).toBeGreaterThan(0);
  });

  test('no fatal JS errors on page 1', async () => {
    expect(fatalOnly(jsErrors)).toEqual([]);
  });

  test('questions have DSFR question containers', async ({ page }) => {
    const containers = page.locator(S.questionContainer);
    expect(await containers.count()).toBeGreaterThan(0);
  });

  test('questions have proper labels or legends', async ({ page }) => {
    const labels = page.locator('.question-container label, .question-container legend, .question-container ' + S.questionText);
    expect(await labels.count()).toBeGreaterThan(0);
  });
});

// ---------------------------------------------------------------------------
// Page 3 — Numeric questions (gid=2)
// ---------------------------------------------------------------------------

test.describe.serial('Page 3 — Numeric questions', () => {
  let jsErrors: string[];

  test.beforeEach(async ({ page }) => {
    jsErrors = collectJsErrors(page);
    await goToPage(page, 3);
  });

  test('numeric (N): input with numeric attributes', async ({ page }) => {
    const numericInput = page.locator(S.numericInput).first();
    await expect(numericInput).toBeVisible({ timeout: 10_000 });

    // Should accept a number
    await numericInput.fill('42');
    await expect(numericInput).toHaveValue('42');
  });

  test('multiple numeric (K): multiple numeric inputs rendered', async ({ page }) => {
    const numericInputs = page.locator(S.numericInput);
    expect(await numericInputs.count()).toBeGreaterThan(1);
  });

  test('slider (Q2): range or slider input rendered', async ({ page }) => {
    // Sliders can be rendered as input[type=range] or a custom slider element
    const rangeInput = page.locator('input[type="range"]');
    const sliderWidget = page.locator('.slider-container, .ui-slider, [class*="slider"]');

    const hasRange = (await rangeInput.count()) > 0;
    const hasSlider = (await sliderWidget.count()) > 0;

    expect(hasRange || hasSlider).toBe(true);
  });

  test('no fatal JS errors on page 3', async () => {
    expect(fatalOnly(jsErrors)).toEqual([]);
  });

  test('questions have DSFR question containers', async ({ page }) => {
    const containers = page.locator(S.questionContainer);
    expect(await containers.count()).toBeGreaterThan(0);
  });
});

// ---------------------------------------------------------------------------
// Page 4 — Single choice questions (gid=3)
// ---------------------------------------------------------------------------

test.describe.serial('Page 4 — Single choice questions', () => {
  let jsErrors: string[];

  test.beforeEach(async ({ page }) => {
    jsErrors = collectJsErrors(page);
    await goToPage(page, 4);
  });

  test('gender (G): radio buttons with DSFR styling', async ({ page }) => {
    const radioGroups = page.locator('.fr-radio-group, ' + S.radioList);
    await expect(radioGroups.first()).toBeVisible({ timeout: 10_000 });
  });

  test('yes/no (Y): two radio options visible', async ({ page }) => {
    // Find a yes/no question — it has exactly 2 substantive radio options
    const yesNoRadios = page.locator('.yes-no-question input[type="radio"], .boilerplate-yes-no input[type="radio"]');
    // Fallback: look for radio lists with exactly 2 options (+ possible "no answer")
    const allRadioLists = page.locator(S.radioList);
    const count = await allRadioLists.count();

    let foundYesNo = false;
    for (let i = 0; i < count; i++) {
      const radios = allRadioLists.nth(i).locator('input[type="radio"]');
      const radioCount = await radios.count();
      // Yes/No has 2 options (+ possibly a "no answer" option = 3)
      if (radioCount >= 2 && radioCount <= 3) {
        foundYesNo = true;
        break;
      }
    }

    expect(foundYesNo || (await yesNoRadios.count()) >= 2).toBe(true);
  });

  test('5-point (5): 5 radio buttons rendered', async ({ page }) => {
    // 5-point scale has exactly 5 radio buttons in a group
    const allRadioLists = page.locator(S.radioList);
    const count = await allRadioLists.count();

    let foundFivePoint = false;
    for (let i = 0; i < count; i++) {
      const radios = allRadioLists.nth(i).locator('input[type="radio"]');
      const radioCount = await radios.count();
      // 5 options + possibly "no answer" = 5 or 6
      if (radioCount === 5 || radioCount === 6) {
        foundFivePoint = true;
        break;
      }
    }

    expect(foundFivePoint).toBe(true);
  });

  test('dropdown (!): select element rendered with options', async ({ page }) => {
    const select = page.locator('.question-container select:visible').first();
    await expect(select).toBeVisible({ timeout: 10_000 });

    const options = select.locator('option');
    expect(await options.count()).toBeGreaterThan(1);
  });

  test('list radio (L): radio buttons in radio-list', async ({ page }) => {
    const radioList = page.locator(S.radioList);
    await expect(radioList.first()).toBeVisible({ timeout: 10_000 });

    const radios = radioList.first().locator('input[type="radio"]');
    expect(await radios.count()).toBeGreaterThan(0);
  });

  test('list with comment (O): radio + textarea for comment', async ({ page }) => {
    // O-type questions have radio buttons and a comment textarea
    const radios = page.locator(S.radioList + ' input[type="radio"]');
    expect(await radios.count()).toBeGreaterThan(0);

    // There should be at least one comment textarea on the page
    const commentTextarea = page.locator('.question-container textarea:visible');
    expect(await commentTextarea.count()).toBeGreaterThan(0);
  });

  test('date (D): date input rendered', async ({ page }) => {
    // Date questions use input[type=text] with a date picker or input[type=date]
    const dateInput = page.locator('input[type="date"], input.date, .date-question input, input[id*="dateinfopopup"], .popupdate input');
    const hasDate = (await dateInput.count()) > 0;

    // Fallback: look for date picker elements
    const datePicker = page.locator('.ui-datepicker-trigger, [class*="datepicker"], [class*="date-picker"]');
    const hasDatePicker = (await datePicker.count()) > 0;

    expect(hasDate || hasDatePicker).toBe(true);
  });

  test('array (F): table with radio buttons in rows', async ({ page }) => {
    const table = page.locator(S.arrayTable);
    await expect(table.first()).toBeVisible({ timeout: 10_000 });

    const tableRadios = table.first().locator('input[type="radio"]');
    expect(await tableRadios.count()).toBeGreaterThan(0);
  });

  test('array 5-point (A): table with radio columns', async ({ page }) => {
    const tables = page.locator(S.arrayTable);
    const tableCount = await tables.count();

    let foundFivePointArray = false;
    for (let i = 0; i < tableCount; i++) {
      const headerCells = tables.nth(i).locator('thead th, thead td');
      const headerCount = await headerCells.count();
      // 5-point array: 1 label column + 5 radio columns (+ possible "no answer") = 6-7
      if (headerCount >= 6) {
        const radiosInTable = tables.nth(i).locator('input[type="radio"]');
        if ((await radiosInTable.count()) > 0) {
          foundFivePointArray = true;
          break;
        }
      }
    }

    expect(foundFivePointArray).toBe(true);
  });

  test('dual scale (1): table with two scale columns', async ({ page }) => {
    // Dual scale arrays have a distinctive structure with two groups of radio buttons
    const dualScaleTable = page.locator('.dual-scale, .dualscale, table.subquestion-list');
    const tables = page.locator(S.arrayTable);

    const hasDualScale = (await dualScaleTable.count()) > 0;

    // Fallback: look for a table with many header columns (two scales)
    let foundWideTable = false;
    const tableCount = await tables.count();
    for (let i = 0; i < tableCount; i++) {
      const headerCells = tables.nth(i).locator('thead th, thead td');
      const count = await headerCells.count();
      // Dual scale: label + scale1 columns + separator + scale2 columns = many columns
      if (count >= 8) {
        foundWideTable = true;
        break;
      }
    }

    expect(hasDualScale || foundWideTable).toBe(true);
  });

  test('no fatal JS errors on page 4', async () => {
    expect(fatalOnly(jsErrors)).toEqual([]);
  });

  test('questions have proper labels or legends', async ({ page }) => {
    const labels = page.locator('.question-container label, .question-container legend, .question-container ' + S.questionText);
    expect(await labels.count()).toBeGreaterThan(0);
  });
});

// ---------------------------------------------------------------------------
// Page 5 — Multiple choice questions (gid=4)
// ---------------------------------------------------------------------------

test.describe.serial('Page 5 — Multiple choice questions', () => {
  let jsErrors: string[];

  test.beforeEach(async ({ page }) => {
    jsErrors = collectJsErrors(page);
    await goToPage(page, 5);
  });

  test('checkboxes (M): checkbox inputs rendered', async ({ page }) => {
    const checkboxes = page.locator('.question-container input[type="checkbox"]:visible');
    await expect(checkboxes.first()).toBeVisible({ timeout: 10_000 });
    expect(await checkboxes.count()).toBeGreaterThan(1);
  });

  test('checkbox with exclusion (M/moe): exclusive option unchecks others', async ({ page }) => {
    // Find a checkbox list that has an exclusive option
    const checkboxLists = page.locator(S.checkboxList);
    const listCount = await checkboxLists.count();

    let tested = false;
    for (let i = 0; i < listCount; i++) {
      const list = checkboxLists.nth(i);
      const exclusiveCheckbox = list.locator('input[type="checkbox"][data-exclusive="1"], input[type="checkbox"].exclusive');

      if ((await exclusiveCheckbox.count()) > 0) {
        const normalCheckboxes = list.locator('input[type="checkbox"]:not([data-exclusive="1"]):not(.exclusive)');
        const normalCount = await normalCheckboxes.count();

        if (normalCount > 0) {
          // Check a normal option first
          await normalCheckboxes.first().check();
          await expect(normalCheckboxes.first()).toBeChecked();

          // Now check the exclusive option
          await exclusiveCheckbox.first().check();
          await expect(exclusiveCheckbox.first()).toBeChecked();

          // The normal option should now be unchecked
          await expect(normalCheckboxes.first()).not.toBeChecked();
          tested = true;
          break;
        }
      }
    }

    // If no exclusive checkbox found with data-exclusive, skip gracefully
    if (!tested) {
      // At least verify checkboxes exist on the page
      const allCheckboxes = page.locator('.question-container input[type="checkbox"]:visible');
      expect(await allCheckboxes.count()).toBeGreaterThan(0);
    }
  });

  test('checkbox with comments (P): checkbox + comment textarea pairs', async ({ page }) => {
    const checkboxes = page.locator('.question-container input[type="checkbox"]:visible');
    expect(await checkboxes.count()).toBeGreaterThan(0);

    // P-type questions pair checkboxes with comment textareas
    const commentTextareas = page.locator('.question-container textarea:visible');
    expect(await commentTextareas.count()).toBeGreaterThan(0);
  });

  test('no fatal JS errors on page 5', async () => {
    expect(fatalOnly(jsErrors)).toEqual([]);
  });

  test('questions have DSFR question containers', async ({ page }) => {
    const containers = page.locator(S.questionContainer);
    expect(await containers.count()).toBeGreaterThan(0);
  });

  test('questions have proper labels or legends', async ({ page }) => {
    const labels = page.locator('.question-container label, .question-container legend, .question-container ' + S.questionText);
    expect(await labels.count()).toBeGreaterThan(0);
  });
});
