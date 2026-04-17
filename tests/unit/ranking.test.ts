import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { getItemLabel, announce, updateControlButtonStates, updateChoiceControlButtonStates, updateRankNumbers, createControlButtons, createChoiceControlButtons, moveItemUp, moveItemDown } from '../../modules/theme-dsfr/src/ranking/ranking.js';

// --- Helpers de construction DOM ---

function buildRankingDOM(qId: string, ranked: string[], choices: string[], maxAnswers = 0): void {
  document.body.innerHTML = `
    <div class="ranking-question-dsfr" data-ranking-qid="${qId}" data-max-answers="${maxAnswers}">
      <div id="ranking-live-${qId}" aria-live="polite"></div>
      <ul id="sortable-rank-${qId}" role="listbox">
        ${ranked.map((label) => `<li data-value="${label}" data-label="${label}"><span class="ranking-item-text">${label}</span></li>`).join('')}
      </ul>
      <ul id="sortable-choice-${qId}" role="listbox">
        ${choices.map((label) => `<li data-value="${label}" data-label="${label}"><span class="ranking-item-text">${label}</span></li>`).join('')}
      </ul>
    </div>
  `;
}

// --- Tests ---

describe('getItemLabel', () => {
  it('retourne le texte de .ranking-item-text', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">  Pomme  </span>';
    expect(getItemLabel(item)).toBe('Pomme');
  });

  it('fallback sur data-label', () => {
    const item = document.createElement('li');
    item.dataset.label = 'Banane';
    expect(getItemLabel(item)).toBe('Banane');
  });

  it('fallback sur textContent', () => {
    const item = document.createElement('li');
    item.textContent = 'Cerise';
    expect(getItemLabel(item)).toBe('Cerise');
  });
});

describe('announce', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('remplit la live region après un délai', () => {
    vi.useFakeTimers();
    document.body.innerHTML = '<div id="ranking-live-42" aria-live="polite"></div>';

    announce('42', 'Pomme ajouté en position 1');

    expect(document.getElementById('ranking-live-42')!.textContent).toBe('');
    vi.advanceTimersByTime(50);
    expect(document.getElementById('ranking-live-42')!.textContent).toBe('Pomme ajouté en position 1');
    vi.useRealTimers();
  });

  it('vide d\'abord puis remplit (force re-annonce)', () => {
    vi.useFakeTimers();
    document.body.innerHTML = '<div id="ranking-live-42" aria-live="polite">Ancien message</div>';

    announce('42', 'Nouveau message');
    expect(document.getElementById('ranking-live-42')!.textContent).toBe('');
    vi.advanceTimersByTime(50);
    expect(document.getElementById('ranking-live-42')!.textContent).toBe('Nouveau message');
    vi.useRealTimers();
  });

  it('ne fait rien si la live region n\'existe pas', () => {
    document.body.innerHTML = '';
    expect(() => announce('999', 'test')).not.toThrow();
  });
});

describe('updateControlButtonStates', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('désactive Monter sur le premier item et Descendre sur le dernier', () => {
    buildRankingDOM('10', ['A', 'B', 'C'], []);
    // Ajouter des boutons
    document.querySelectorAll('#sortable-rank-10 li').forEach((item) => {
      createControlButtons(item as HTMLElement, '10');
    });

    updateControlButtonStates('10');

    const items = document.querySelectorAll('#sortable-rank-10 li');
    expect((items[0].querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(true);
    expect((items[0].querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(false);
    expect((items[1].querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(false);
    expect((items[1].querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(false);
    expect((items[2].querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(false);
    expect((items[2].querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(true);
  });

  it('désactive les deux boutons si un seul item', () => {
    buildRankingDOM('10', ['A'], []);
    document.querySelectorAll('#sortable-rank-10 li').forEach((item) => {
      createControlButtons(item as HTMLElement, '10');
    });

    updateControlButtonStates('10');

    const item = document.querySelector('#sortable-rank-10 li')!;
    expect((item.querySelector('.ranking-btn-up') as HTMLButtonElement).disabled).toBe(true);
    expect((item.querySelector('.ranking-btn-down') as HTMLButtonElement).disabled).toBe(true);
  });
});

describe('updateChoiceControlButtonStates', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('désactive les boutons Ajouter quand le max est atteint', () => {
    buildRankingDOM('10', ['A', 'B'], ['C', 'D'], 2);
    document.querySelectorAll('#sortable-choice-10 li').forEach((item) => {
      createChoiceControlButtons(item as HTMLElement, '10');
    });

    updateChoiceControlButtonStates('10');

    document.querySelectorAll('#sortable-choice-10 .ranking-btn-add').forEach((btn) => {
      expect((btn as HTMLButtonElement).disabled).toBe(true);
    });
  });

  it('laisse les boutons Ajouter actifs quand pas de max', () => {
    buildRankingDOM('10', ['A'], ['B', 'C'], 0);
    document.querySelectorAll('#sortable-choice-10 li').forEach((item) => {
      createChoiceControlButtons(item as HTMLElement, '10');
    });

    updateChoiceControlButtonStates('10');

    document.querySelectorAll('#sortable-choice-10 .ranking-btn-add').forEach((btn) => {
      expect((btn as HTMLButtonElement).disabled).toBe(false);
    });
  });

  it('laisse les boutons actifs quand le max n\'est pas encore atteint', () => {
    buildRankingDOM('10', ['A'], ['B', 'C'], 3);
    document.querySelectorAll('#sortable-choice-10 li').forEach((item) => {
      createChoiceControlButtons(item as HTMLElement, '10');
    });

    updateChoiceControlButtonStates('10');

    document.querySelectorAll('#sortable-choice-10 .ranking-btn-add').forEach((btn) => {
      expect((btn as HTMLButtonElement).disabled).toBe(false);
    });
  });
});

describe('updateRankNumbers', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('ajoute des badges #1, #2, #3 sur les items classés', () => {
    buildRankingDOM('10', ['Pomme', 'Banane', 'Cerise'], []);

    updateRankNumbers('10');

    const badges = document.querySelectorAll('#sortable-rank-10 .ranking-rank-badge');
    expect(badges.length).toBe(3);
    expect(badges[0].textContent).toBe('#1');
    expect(badges[1].textContent).toBe('#2');
    expect(badges[2].textContent).toBe('#3');
  });

  it('met à jour aria-label avec le rang et le total', () => {
    buildRankingDOM('10', ['Pomme', 'Banane'], []);

    updateRankNumbers('10');

    const items = document.querySelectorAll('#sortable-rank-10 li');
    expect(items[0].getAttribute('aria-label')).toContain('Rang 1 sur 2');
    expect(items[1].getAttribute('aria-label')).toContain('Rang 2 sur 2');
  });

  it('pose aria-selected="true" sur les items classés', () => {
    buildRankingDOM('10', ['Pomme'], ['Banane']);

    updateRankNumbers('10');

    expect(document.querySelector('#sortable-rank-10 li')!.getAttribute('aria-selected')).toBe('true');
    expect(document.querySelector('#sortable-choice-10 li')!.getAttribute('aria-selected')).toBe('false');
  });

  it('supprime les badges des items dans la choice list', () => {
    buildRankingDOM('10', [], ['Pomme']);
    // Simuler un badge résiduel
    const choiceItem = document.querySelector('#sortable-choice-10 li')!;
    const badge = document.createElement('span');
    badge.className = 'ranking-rank-badge';
    choiceItem.appendChild(badge);

    updateRankNumbers('10');

    expect(document.querySelectorAll('#sortable-choice-10 .ranking-rank-badge').length).toBe(0);
  });

  it('ne fait rien si la rankList n\'existe pas', () => {
    document.body.innerHTML = '';
    expect(() => updateRankNumbers('999')).not.toThrow();
  });
});

describe('createControlButtons', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('crée 3 boutons (Monter, Descendre, Retirer)', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Pomme</span>';

    createControlButtons(item, '10');

    expect(item.querySelector('.ranking-btn-up')).not.toBeNull();
    expect(item.querySelector('.ranking-btn-down')).not.toBeNull();
    expect(item.querySelector('.ranking-btn-remove')).not.toBeNull();
  });

  it('ajoute les aria-labels avec le nom de l\'item', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Banane</span>';

    createControlButtons(item, '10');

    expect(item.querySelector('.ranking-btn-up')!.getAttribute('aria-label')).toBe('Monter Banane');
    expect(item.querySelector('.ranking-btn-remove')!.getAttribute('aria-label')).toBe('Retirer Banane du classement');
  });

  it('ne duplique pas les boutons sur un second appel', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Pomme</span>';

    createControlButtons(item, '10');
    createControlButtons(item, '10');

    expect(item.querySelectorAll('.ranking-controls').length).toBe(1);
  });

  it('wrape les boutons dans un groupe avec role="group"', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Cerise</span>';

    createControlButtons(item, '10');

    const group = item.querySelector('.ranking-controls')!;
    expect(group.getAttribute('role')).toBe('group');
    expect(group.getAttribute('aria-label')).toBe('Actions pour Cerise');
  });
});

describe('createChoiceControlButtons', () => {
  it('crée un bouton Ajouter', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Pomme</span>';

    createChoiceControlButtons(item, '10');

    expect(item.querySelector('.ranking-btn-add')).not.toBeNull();
    expect(item.querySelector('.ranking-btn-add')!.getAttribute('aria-label')).toBe('Ajouter Pomme au classement');
  });

  it('ne duplique pas sur un second appel', () => {
    const item = document.createElement('li');
    item.innerHTML = '<span class="ranking-item-text">Pomme</span>';

    createChoiceControlButtons(item, '10');
    createChoiceControlButtons(item, '10');

    expect(item.querySelectorAll('.ranking-choice-controls').length).toBe(1);
  });
});

describe('moveItemUp / moveItemDown', () => {
  afterEach(() => { document.body.innerHTML = ''; });

  it('moveItemUp déplace l\'item avant son frère précédent', () => {
    buildRankingDOM('10', ['A', 'B', 'C'], []);
    const items = document.querySelectorAll('#sortable-rank-10 li');

    moveItemUp(items[1] as HTMLElement, '10');

    const newOrder = Array.from(document.querySelectorAll('#sortable-rank-10 li')).map(
      (li) => getItemLabel(li as HTMLElement)
    );
    expect(newOrder).toEqual(['B', 'A', 'C']);
  });

  it('moveItemUp ne fait rien sur le premier item', () => {
    buildRankingDOM('10', ['A', 'B'], []);
    const items = document.querySelectorAll('#sortable-rank-10 li');

    moveItemUp(items[0] as HTMLElement, '10');

    const newOrder = Array.from(document.querySelectorAll('#sortable-rank-10 li')).map(
      (li) => getItemLabel(li as HTMLElement)
    );
    expect(newOrder).toEqual(['A', 'B']);
  });

  it('moveItemDown déplace l\'item après son frère suivant', () => {
    buildRankingDOM('10', ['A', 'B', 'C'], []);
    const items = document.querySelectorAll('#sortable-rank-10 li');

    moveItemDown(items[0] as HTMLElement, '10');

    const newOrder = Array.from(document.querySelectorAll('#sortable-rank-10 li')).map(
      (li) => getItemLabel(li as HTMLElement)
    );
    expect(newOrder).toEqual(['B', 'A', 'C']);
  });

  it('moveItemDown ne fait rien sur le dernier item', () => {
    buildRankingDOM('10', ['A', 'B'], []);
    const items = document.querySelectorAll('#sortable-rank-10 li');

    moveItemDown(items[1] as HTMLElement, '10');

    const newOrder = Array.from(document.querySelectorAll('#sortable-rank-10 li')).map(
      (li) => getItemLabel(li as HTMLElement)
    );
    expect(newOrder).toEqual(['A', 'B']);
  });

  it('moveItemUp saute les items .ls-remove', () => {
    buildRankingDOM('10', ['A', 'B', 'C'], []);
    const items = document.querySelectorAll('#sortable-rank-10 li');
    items[1].classList.add('ls-remove'); // B est invisible

    moveItemUp(items[2] as HTMLElement, '10'); // C monte, saute B

    const newOrder = Array.from(document.querySelectorAll('#sortable-rank-10 li'))
      .filter((li) => !li.classList.contains('ls-remove'))
      .map((li) => getItemLabel(li as HTMLElement));
    expect(newOrder).toEqual(['C', 'A']);
  });
});
