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
    await page.waitForLoadState('domcontentloaded');
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
 * Version rapide : remplit la majeure partie des champs via un unique
 * `page.evaluate`, pour éviter des dizaines de round-trips CDP par page.
 * Les rankings et l'input-on-demand (qui ont une lib JS qui intercepte le
 * clic « Ajouter ») doivent encore passer par de vrais clics Playwright —
 * traités après ce bloc.
 */
async function fillMandatoryFieldsFast(page: Page): Promise<void> {
  await page.evaluate(() => {
    // Text inputs + textarea dans .mandatory.question-container
    document.querySelectorAll('.mandatory.question-container input[type="text"], .mandatory.question-container textarea').forEach((el) => {
      const input = el as HTMLInputElement | HTMLTextAreaElement;
      if (input.disabled) return;
      if (input.value) return;
      const isNumeric = (input as HTMLInputElement).dataset?.number === '1' || input.getAttribute('inputmode') === 'numeric';
      input.value = isNumeric ? '42' : 'Test';
      input.dispatchEvent(new Event('input', { bubbles: true }));
      input.dispatchEvent(new Event('change', { bubbles: true }));
    });
    // Cocher 1 radio par question mandatory
    document.querySelectorAll('.mandatory.question-container').forEach((q) => {
      const radios = Array.from(q.querySelectorAll('input[type="radio"]:not([disabled])')) as HTMLInputElement[];
      if (radios.length === 0) return;
      if (radios.some((r) => r.checked)) return;
      const first = radios[0];
      first.checked = true;
      first.dispatchEvent(new Event('click', { bubbles: true }));
      first.dispatchEvent(new Event('change', { bubbles: true }));
    });
    // Cocher 1 checkbox par question mandatory
    document.querySelectorAll('.mandatory.question-container').forEach((q) => {
      const cbs = Array.from(q.querySelectorAll('input[type="checkbox"]:not([disabled])')) as HTMLInputElement[];
      if (cbs.length === 0) return;
      if (cbs.some((c) => c.checked)) return;
      const first = cbs[0];
      first.checked = true;
      first.dispatchEvent(new Event('click', { bubbles: true }));
      first.dispatchEvent(new Event('change', { bubbles: true }));
    });
  });
}

/**
 * Remplit les champs obligatoires visibles sur la page courante
 * pour permettre la navigation vers la page suivante.
 */
export async function fillMandatoryFields(page: Page): Promise<void> {
  // Phase 1 : remplissage rapide en JS (inputs/textarea/radios/checkboxes)
  // en un unique round-trip CDP — sinon, sur une page à 24+ champs, chaque
  // opération Playwright ajoute 50–100 ms et on dépasse le timeout de test.
  await fillMandatoryFieldsFast(page);

  // Phase 2 : rankings (lib JS qui intercepte le clic « Ajouter »).
  // Les questions ranking ont souvent une contrainte `min_answers` imposée
  // par EM (validation serveur), indépendamment de mandatory=Y/N.
  const rankingContainers = page.locator('.ranking-question-dsfr');
  const rkCount = await rankingContainers.count();
  for (let i = 0; i < rkCount; i++) {
    const rc = rankingContainers.nth(i);
    for (let safety = 0; safety < 10; safety++) {
      const addBtn = rc.locator('.ranking-btn-add').first();
      if (!(await addBtn.isVisible().catch(() => false))) break;
      await addBtn.click({ force: true }).catch(() => {});
      await page.waitForTimeout(30);
    }
  }

  // Phase 3 : inputondemand (nécessite un vrai clic « Ajouter une ligne »
  // pour déclencher la lib LS qui enlève `d-none` sur la sous-question suivante).
  // LimeSurvey valide côté serveur TOUTES les sous-questions y compris les
  // non-encore-révélées — on les affiche toutes puis on remplit.
  const iodContainers = page.locator('.mandatory.question-container [id^="selector--inputondemand-"]');
  const iodCount = await iodContainers.count();
  for (let i = 0; i < iodCount; i++) {
    const ctn = iodContainers.nth(i);
    const addBtn = ctn.locator('.selector--inputondemand-addlinebutton');
    for (let safety = 0; safety < 10; safety++) {
      const hidden = await ctn.locator('.selector--inputondemand-list-item.d-none').count();
      if (hidden === 0) break;
      if (!(await addBtn.isVisible().catch(() => false))) break;
      await addBtn.click({ force: true }).catch(() => {});
      await page.waitForTimeout(30);
    }
    // Remplir les inputs via JS (plus rapide et gère aussi les éléments
    // visuellement cachés par un parent en display:none résiduel).
    await page.evaluate((containerId) => {
      const ctr = document.getElementById(containerId);
      if (!ctr) return;
      ctr.querySelectorAll('input[type="text"], textarea').forEach((el) => {
        const input = el as HTMLInputElement | HTMLTextAreaElement;
        if (input.disabled || input.value) return;
        input.value = 'Test';
        input.dispatchEvent(new Event('input', { bubbles: true }));
        input.dispatchEvent(new Event('change', { bubbles: true }));
      });
    }, await ctn.getAttribute('id') || '');
  }
}

/**
 * Passe la page de bienvenue (si présente) pour arriver aux questions.
 */
export async function skipWelcomePage(page: Page): Promise<void> {
  const nextBtn = page.locator(NEXT_BTN);
  if (await nextBtn.isVisible().catch(() => false)) {
    await nextBtn.click();
    await page.waitForLoadState('domcontentloaded');
  }
}

/**
 * Clique "Suivant" jusqu'à trouver un sélecteur donné sur la page.
 * Remplit automatiquement les champs obligatoires pour passer chaque page.
 */
export async function navigateToSelector(page: Page, selector: string, maxPages = 15): Promise<void> {
  for (let i = 0; i < maxPages; i++) {
    const found = await page.locator(selector).first().isVisible().catch(() => false);
    if (found) return;

    await fillMandatoryFields(page);

    const nextBtn = page.locator(NEXT_BTN);
    if (await nextBtn.isVisible().catch(() => false)) {
      await nextBtn.click();
      await page.waitForLoadState('domcontentloaded');
      // Petit délai pour laisser le core LimeSurvey + notre JS DSFR initialiser
      // la page fraîchement rendue (handlers, relevance, error-summary, etc.)
      // avant le prochain remplissage / contrôle de visibilité.
      await page.waitForTimeout(250);
    } else {
      throw new Error(`Selector "${selector}" not found after ${i + 1} pages and no Next button available`);
    }
  }
  throw new Error(`Selector "${selector}" not found after ${maxPages} pages`);
}

/**
 * Clique "Suivant" pour avancer d'un certain nombre de pages.
 * Remplit automatiquement les champs obligatoires pour ne pas rester bloqué.
 * Relance le remplissage si la page ne change pas (erreur de validation).
 */
export async function advancePages(page: Page, count: number): Promise<void> {
  for (let i = 0; i < count; i++) {
    const maxRetries = 3;
    for (let attempt = 0; attempt < maxRetries; attempt++) {
      await fillMandatoryFields(page);

      // Remplir les rankings visibles (non obligatoires mais requis par LimeSurvey)
      const rankings = page.locator('.ranking-question-dsfr');
      const rankCount = await rankings.count();
      if (rankCount > 0) {
        // Attendre que le JS initialise les boutons de ranking
        await page.locator('.ranking-btn-add').first().waitFor({ state: 'visible', timeout: 3_000 }).catch(() => {});
        for (let r = 0; r < rankCount; r++) {
          // Remplir tous les selects vides du ranking (certains exigent un minimum)
          const selects = rankings.nth(r).locator('select');
          const selectCount = await selects.count();
          for (let s = 0; s < selectCount; s++) {
            if (!(await selects.nth(s).inputValue())) {
              const addBtn = rankings.nth(r).locator('.ranking-btn-add').first();
              if (await addBtn.isVisible().catch(() => false)) {
                await addBtn.click();
                await page.waitForTimeout(150);
              }
            }
          }
        }
      }

      const questionsBefore = await page.locator('.question-container').count();
      const errorsBefore = await page.locator('.question-container.input-error').count();

      const nextBtn = page.locator(NEXT_BTN);
      if (await nextBtn.isVisible().catch(() => false)) {
        await nextBtn.click();
        await page.waitForLoadState('domcontentloaded');
      }

      // Vérifier si on a avancé : pas d'erreurs ou nombre de questions différent
      const errorsAfter = await page.locator('.question-container.input-error').count();
      if (errorsAfter === 0) break; // Pas d'erreur = on a avancé
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
  await page.waitForLoadState('domcontentloaded');
}
