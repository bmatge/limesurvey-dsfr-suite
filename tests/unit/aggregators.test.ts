import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { refreshAllItems } from '../../modules/theme-dsfr/src/ranking/ranking.js';
import { initMultipleShortText } from '../../modules/theme-dsfr/src/inputs/input-on-demand.js';
import { initConditionalQuestionsAria } from '../../modules/theme-dsfr/src/a11y/conditional-aria.js';

// ── Tests ──────────────────────────────────────────────────────────────────

describe('refreshAllItems — agrégateur ranking', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  function buildDOM(): void {
    document.body.innerHTML = `
      <div class="ranking-question-dsfr" data-ranking-qid="10" data-max-answers="3">
        <ul id="sortable-rank-10" role="listbox">
          <li data-value="A"><span class="ranking-item-text">Pomme</span></li>
          <li data-value="B"><span class="ranking-item-text">Banane</span></li>
        </ul>
        <ul id="sortable-choice-10" role="listbox">
          <li data-value="C"><span class="ranking-item-text">Cerise</span></li>
        </ul>
      </div>
    `;
  }

  it('ajoute les boutons Monter/Descendre/Retirer sur les items classés', () => {
    buildDOM();
    refreshAllItems('10');
    const controls = document.querySelectorAll('#sortable-rank-10 .ranking-controls');
    expect(controls.length).toBe(2);
  });

  it('ajoute les boutons Ajouter sur les items de la choice list', () => {
    buildDOM();
    refreshAllItems('10');
    const addBtns = document.querySelectorAll('#sortable-choice-10 .ranking-btn-add');
    expect(addBtns.length).toBe(1);
  });

  it('pose les badges de rang #1, #2', () => {
    buildDOM();
    refreshAllItems('10');
    const badges = document.querySelectorAll('#sortable-rank-10 .ranking-rank-badge');
    expect(badges[0].textContent).toBe('#1');
    expect(badges[1].textContent).toBe('#2');
  });

  it('désactive Monter sur le 1er et Descendre sur le dernier', () => {
    buildDOM();
    refreshAllItems('10');
    const items = document.querySelectorAll('#sortable-rank-10 li');
    expect((items[0].querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(true);
    expect((items[0].querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(false);
    expect((items[1].querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(false);
    expect((items[1].querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(true);
  });

  it('pose aria-selected="true" sur les items classés et "false" sur les choix', () => {
    buildDOM();
    refreshAllItems('10');
    expect(document.querySelector('#sortable-rank-10 li')!.getAttribute('aria-selected')).toBe('true');
    expect(document.querySelector('#sortable-choice-10 li')!.getAttribute('aria-selected')).toBe('false');
  });

  it('nettoie les boutons choice-controls résiduels dans la ranked list', () => {
    buildDOM();
    // Simuler un bouton résiduel (item drag-droppé avec son bouton Ajouter)
    const rankedItem = document.querySelector('#sortable-rank-10 li')!;
    const residual = document.createElement('span');
    residual.className = 'ranking-choice-controls';
    rankedItem.appendChild(residual);

    refreshAllItems('10');

    expect(document.querySelectorAll('#sortable-rank-10 .ranking-choice-controls').length).toBe(0);
  });

  it('nettoie les boutons ranking-controls résiduels dans la choice list', () => {
    buildDOM();
    // Simuler un bouton résiduel (item retiré du classement)
    const choiceItem = document.querySelector('#sortable-choice-10 li')!;
    const residual = document.createElement('span');
    residual.className = 'ranking-controls';
    choiceItem.appendChild(residual);

    refreshAllItems('10');

    expect(document.querySelectorAll('#sortable-choice-10 .ranking-controls').length).toBe(0);
  });

  it('est idempotent (double appel ne duplique rien)', () => {
    buildDOM();
    refreshAllItems('10');
    refreshAllItems('10');
    expect(document.querySelectorAll('#sortable-rank-10 .ranking-controls').length).toBe(2);
    expect(document.querySelectorAll('#sortable-rank-10 .ranking-rank-badge').length).toBe(2);
  });
});

describe('initMultipleShortText — agrégateur input on demand', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('affiche la première ligne si toutes sont masquées ET masque le bouton si plus de lignes', () => {
    document.body.innerHTML = `
      <div id="selector--inputondemand-q42">
        <div class="selector--inputondemand-list">
          <div class="selector--inputondemand-list-item d-none"><input type="text"></div>
          <div class="selector--inputondemand-list-item d-none"><input type="text"></div>
        </div>
        <button class="selector--inputondemand-addlinebutton">Ajouter</button>
      </div>
    `;

    initMultipleShortText();

    // restoreVisibleLines : première ligne visible
    const items = document.querySelectorAll('.selector--inputondemand-list-item');
    expect(items[0].classList.contains('d-none')).toBe(false);
    expect(items[1].classList.contains('d-none')).toBe(true);

    // updateAddButtonVisibility : bouton visible (1 ligne masquée)
    const btn = document.querySelector('.selector--inputondemand-addlinebutton') as HTMLElement;
    expect(btn.style.display).toBe('');
  });

  it('masque le bouton quand toutes les lignes sont visibles', () => {
    document.body.innerHTML = `
      <div id="selector--inputondemand-q42">
        <div class="selector--inputondemand-list">
          <div class="selector--inputondemand-list-item"><input type="text"></div>
          <div class="selector--inputondemand-list-item"><input type="text"></div>
        </div>
        <button class="selector--inputondemand-addlinebutton">Ajouter</button>
      </div>
    `;

    initMultipleShortText();

    const btn = document.querySelector('.selector--inputondemand-addlinebutton') as HTMLElement;
    expect(btn.style.display).toBe('none');
  });
});

describe('initConditionalQuestionsAria — agrégateur conditionnels', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('crée une description générique pour les questions ls-irrelevant sans data-relevance', () => {
    document.body.innerHTML = `
      <div id="question42" class="question-container ls-irrelevant">
        <input type="text" id="answer42">
      </div>
    `;

    initConditionalQuestionsAria();

    // Description créée
    const desc = document.querySelector('#conditional-desc-question42');
    expect(desc).not.toBeNull();
    expect(desc!.textContent).toBe('Cette question est conditionnelle.');
    expect(desc!.getAttribute('role')).toBe('note');

    // aria-describedby lié
    expect(document.getElementById('answer42')!.getAttribute('aria-describedby')).toBe('conditional-desc-question42');

    // Marquée comme traitée
    expect((document.getElementById('question42') as HTMLElement).dataset.dsfrConditionalProcessed).toBe('true');
  });

  it('crée une description enrichie pour les questions avec data-relevance', () => {
    document.body.innerHTML = `
      <div id="questionQ1" data-qcode="Q1">
        <h3 id="ls-question-text-Q1">Votre âge ?</h3>
      </div>
      <div id="question43" class="question-container" data-relevance="Q1.NAOK > 18">
        <input type="text" id="answer43">
      </div>
    `;

    initConditionalQuestionsAria();

    const desc = document.querySelector('#conditional-desc-question43');
    expect(desc).not.toBeNull();
    expect(desc!.textContent).toContain('Votre âge ?');

    expect(document.getElementById('answer43')!.getAttribute('aria-describedby')).toBe('conditional-desc-question43');
  });

  it('ne retraite pas une question déjà marquée', () => {
    document.body.innerHTML = `
      <div id="question42" class="question-container ls-irrelevant" data-dsfr-conditional-processed="true">
        <input type="text" id="answer42">
      </div>
    `;

    initConditionalQuestionsAria();

    // Pas de description créée
    expect(document.querySelector('[id^="conditional-desc-"]')).toBeNull();
  });

  it('traite plusieurs questions en une passe', () => {
    document.body.innerHTML = `
      <div id="question42" class="question-container ls-irrelevant">
        <input type="text">
      </div>
      <div id="question43" class="question-container ls-hidden">
        <input type="text">
      </div>
    `;

    initConditionalQuestionsAria();

    expect(document.querySelectorAll('[id^="conditional-desc-"]').length).toBe(2);
  });
});
