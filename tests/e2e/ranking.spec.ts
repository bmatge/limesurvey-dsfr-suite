import { test, expect, SURVEY_URL, navigateToSelector } from './fixtures/survey';
import { S } from './helpers/selectors';

/**
 * Helper: navigate to the page containing ranking questions R (qid=25)
 * and R1 (qid=39). Robuste au réordonnancement du questionnaire.
 */
async function goToRankingPage(page: import('@playwright/test').Page) {
  await page.goto(SURVEY_URL);
  await page.waitForLoadState('domcontentloaded');
  await navigateToSelector(page, S.rankingQuestion);
  // Wait for the ranking JS to initialize (setTimeout 200ms in custom.js)
  await page.waitForSelector(S.rankingQuestion, { timeout: 10_000 });
}

/** Visible (non-hidden, non-removed) items in a list */
function visibleItems(list: import('@playwright/test').Locator) {
  return list.locator('li:not(.ls-remove):not(.d-none)');
}

/** Shorthand: first ranking question container on the page */
function firstRanking(page: import('@playwright/test').Page) {
  return page.locator(S.rankingQuestion).first();
}

/** Choice list of the first ranking question */
function choiceList(page: import('@playwright/test').Page) {
  return firstRanking(page).locator(S.rankingChoiceList);
}

/** Rank list of the first ranking question */
function rankList(page: import('@playwright/test').Page) {
  return firstRanking(page).locator(S.rankingRankList);
}

test.describe('Ranking — DSFR accessible ranking questions', () => {

  // ---- 1. Rendering ----

  test('ranking renders correctly', async ({ page }) => {
    await goToRankingPage(page);

    // At least one .ranking-question-dsfr container exists
    const containers = page.locator(S.rankingQuestion);
    await expect(containers.first()).toBeVisible();
    const count = await containers.count();
    expect(count).toBeGreaterThanOrEqual(1);

    // Choice list has visible items with Add buttons
    const choices = visibleItems(choiceList(page));
    const choiceCount = await choices.count();
    expect(choiceCount).toBeGreaterThan(0);
    await expect(choices.first().locator(S.rankingBtnAdd)).toBeVisible();

    // Rank list is initially empty
    const ranked = visibleItems(rankList(page));
    expect(await ranked.count()).toBe(0);
  });

  // ---- 2. Add single item ----

  test('add item to ranking', async ({ page }) => {
    await goToRankingPage(page);

    const choices = visibleItems(choiceList(page));
    const initialChoiceCount = await choices.count();

    // Remember the text of the first choice
    const firstChoiceText = await choices.first().locator('.ranking-item-text').textContent();

    // Click the first Add button
    await choices.first().locator(S.rankingBtnAdd).click();

    // The item should now be in the rank list
    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(1);

    // Badge shows "#1"
    const badge = ranked.first().locator(S.rankingBadge);
    await expect(badge).toHaveText('#1');

    // The item text should match what was added
    const rankedText = await ranked.first().locator('.ranking-item-text').textContent();
    expect(rankedText).toBe(firstChoiceText);

    // Choice list has one fewer item
    const newChoiceCount = await visibleItems(choiceList(page)).count();
    expect(newChoiceCount).toBe(initialChoiceCount - 1);
  });

  // ---- 3. Add multiple items ----

  test('add multiple items', async ({ page }) => {
    await goToRankingPage(page);

    // Add 3 items sequentially
    for (let i = 0; i < 3; i++) {
      const addBtn = visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd);
      await addBtn.click();
      // Small wait for DOM update
      await page.waitForTimeout(100);
    }

    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(3);

    // Verify badges show #1, #2, #3
    for (let i = 0; i < 3; i++) {
      const badge = ranked.nth(i).locator(S.rankingBadge);
      await expect(badge).toHaveText(`#${i + 1}`);
    }
  });

  // ---- 4. Remove item ----

  test('remove item from ranking', async ({ page }) => {
    await goToRankingPage(page);

    const initialChoiceCount = await visibleItems(choiceList(page)).count();

    // Add 2 items
    for (let i = 0; i < 2; i++) {
      await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();
      await page.waitForTimeout(100);
    }

    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(2);

    // Remove the first ranked item
    await ranked.first().locator(S.rankingBtnRemove).click();
    await page.waitForTimeout(100);

    // Rank list now has 1 item
    const rankedAfter = visibleItems(rankList(page));
    await expect(rankedAfter).toHaveCount(1);

    // Remaining item badge should update to #1
    await expect(rankedAfter.first().locator(S.rankingBadge)).toHaveText('#1');

    // Choice list should have gained one item back
    const newChoiceCount = await visibleItems(choiceList(page)).count();
    expect(newChoiceCount).toBe(initialChoiceCount - 1);
  });

  // ---- 5. Move item up / down ----

  test('move item up and down', async ({ page }) => {
    await goToRankingPage(page);

    // Collect the labels of the first 3 choices before adding
    const labels: string[] = [];
    for (let i = 0; i < 3; i++) {
      const text = await visibleItems(choiceList(page)).nth(i).locator('.ranking-item-text').textContent();
      labels.push(text?.trim() ?? '');
    }

    // Add 3 items (they are added in order: labels[0], labels[1], labels[2])
    for (let i = 0; i < 3; i++) {
      await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();
      await page.waitForTimeout(100);
    }

    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(3);

    // Click Down on the first item → it moves to position #2
    await ranked.first().locator(S.rankingBtnDown).click();
    await page.waitForTimeout(100);

    // After moving down: order should be [labels[1], labels[0], labels[2]]
    const rankedAfterDown = visibleItems(rankList(page));
    const firstText = await rankedAfterDown.nth(0).locator('.ranking-item-text').textContent();
    const secondText = await rankedAfterDown.nth(1).locator('.ranking-item-text').textContent();
    expect(firstText?.trim()).toBe(labels[1]);
    expect(secondText?.trim()).toBe(labels[0]);

    // Badges should still be sequential
    await expect(rankedAfterDown.nth(0).locator(S.rankingBadge)).toHaveText('#1');
    await expect(rankedAfterDown.nth(1).locator(S.rankingBadge)).toHaveText('#2');
    await expect(rankedAfterDown.nth(2).locator(S.rankingBadge)).toHaveText('#3');

    // Click Up on the last item → it moves to position #2
    await rankedAfterDown.nth(2).locator(S.rankingBtnUp).click();
    await page.waitForTimeout(100);

    // After moving up: order should be [labels[1], labels[2], labels[0]]
    const rankedAfterUp = visibleItems(rankList(page));
    const pos2Text = await rankedAfterUp.nth(1).locator('.ranking-item-text').textContent();
    expect(pos2Text?.trim()).toBe(labels[2]);

    // Badges still sequential
    for (let i = 0; i < 3; i++) {
      await expect(rankedAfterUp.nth(i).locator(S.rankingBadge)).toHaveText(`#${i + 1}`);
    }
  });

  // ---- 6. Button states ----

  test('button states are correct', async ({ page }) => {
    await goToRankingPage(page);

    // Add 1 item
    await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();
    await page.waitForTimeout(100);

    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(1);

    // With only 1 item: Up and Down should both be disabled
    const btnUp = ranked.first().locator(S.rankingBtnUp);
    const btnDown = ranked.first().locator(S.rankingBtnDown);
    await expect(btnUp).toBeDisabled();
    await expect(btnDown).toBeDisabled();

    // Add a second item
    await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();
    await page.waitForTimeout(100);

    const rankedTwo = visibleItems(rankList(page));
    await expect(rankedTwo).toHaveCount(2);

    // First item: Up disabled, Down enabled
    await expect(rankedTwo.nth(0).locator(S.rankingBtnUp)).toBeDisabled();
    await expect(rankedTwo.nth(0).locator(S.rankingBtnDown)).toBeEnabled();

    // Last item: Up enabled, Down disabled
    await expect(rankedTwo.nth(1).locator(S.rankingBtnUp)).toBeEnabled();
    await expect(rankedTwo.nth(1).locator(S.rankingBtnDown)).toBeDisabled();
  });

  // ---- 7. Keyboard accessibility ----

  test('keyboard accessibility', async ({ page }) => {
    await goToRankingPage(page);

    const choices = visibleItems(choiceList(page));
    const initialChoiceCount = await choices.count();

    // Focus on the first Add button and press Enter
    const addBtn = choices.first().locator(S.rankingBtnAdd);
    await addBtn.focus();
    await page.keyboard.press('Enter');
    await page.waitForTimeout(150);

    // Item should have been added
    const ranked = visibleItems(rankList(page));
    await expect(ranked).toHaveCount(1);

    // Add a second item via keyboard
    const addBtn2 = visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd);
    await addBtn2.focus();
    await page.keyboard.press('Enter');
    await page.waitForTimeout(150);

    await expect(visibleItems(rankList(page))).toHaveCount(2);

    // Focus on the Up button of the second ranked item and press Enter
    const upBtn = visibleItems(rankList(page)).nth(1).locator(S.rankingBtnUp);
    await upBtn.focus();
    await page.keyboard.press('Enter');
    await page.waitForTimeout(150);

    // The second item should now be first (badge #1)
    await expect(visibleItems(rankList(page)).nth(0).locator(S.rankingBadge)).toHaveText('#1');

    // Focus on the Remove button and press Enter
    const removeBtn = visibleItems(rankList(page)).first().locator(S.rankingBtnRemove);
    await removeBtn.focus();
    await page.keyboard.press('Enter');
    await page.waitForTimeout(150);

    // Should be back to 1 ranked item
    await expect(visibleItems(rankList(page))).toHaveCount(1);

    // Choice list gained one back
    const finalChoiceCount = await visibleItems(choiceList(page)).count();
    expect(finalChoiceCount).toBe(initialChoiceCount - 1);
  });

  // ---- 8. Screen reader announcements ----

  test('screen reader announcements via aria-live region', async ({ page }) => {
    await goToRankingPage(page);

    // Verify the live region exists with aria-live="polite"
    const liveRegion = firstRanking(page).locator(S.rankingLiveRegion);
    await expect(liveRegion).toBeAttached();
    await expect(liveRegion).toHaveAttribute('aria-live', 'polite');

    // Initially empty or no content
    const initialText = await liveRegion.textContent();

    // Add an item
    await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();

    // Wait for the announce() setTimeout(50ms) to fire
    await page.waitForTimeout(200);

    // Live region text should have changed (announces the action)
    const afterAddText = await liveRegion.textContent();
    expect(afterAddText).not.toBe('');
    expect(afterAddText).toContain('classement');
  });

  // ---- 9. Hidden select synchronization ----

  test('hidden select elements sync with visual order', async ({ page }) => {
    await goToRankingPage(page);

    // Collect data-value of first 3 choices before adding
    const dataValues: string[] = [];
    const choices = visibleItems(choiceList(page));
    for (let i = 0; i < 3; i++) {
      const val = await choices.nth(i).getAttribute('data-value');
      dataValues.push(val ?? '');
    }

    // Add 3 items in order
    for (let i = 0; i < 3; i++) {
      await visibleItems(choiceList(page)).first().locator(S.rankingBtnAdd).click();
      await page.waitForTimeout(100);
    }

    // The hidden selects should reflect the order
    const questionEl = firstRanking(page).locator('..').locator('.select-list .select-item select');
    const selectCount = await questionEl.count();
    expect(selectCount).toBeGreaterThanOrEqual(3);

    for (let i = 0; i < 3; i++) {
      const selectValue = await questionEl.nth(i).inputValue();
      expect(selectValue).toBe(dataValues[i]);
    }

    // Move the first item down (swap positions 1 and 2)
    await visibleItems(rankList(page)).first().locator(S.rankingBtnDown).click();
    await page.waitForTimeout(100);

    // After swap: selects should be [dataValues[1], dataValues[0], dataValues[2]]
    const newVal0 = await questionEl.nth(0).inputValue();
    const newVal1 = await questionEl.nth(1).inputValue();
    const newVal2 = await questionEl.nth(2).inputValue();
    expect(newVal0).toBe(dataValues[1]);
    expect(newVal1).toBe(dataValues[0]);
    expect(newVal2).toBe(dataValues[2]);
  });
});
