import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { createConditionalDescription, addAriaDescribedBy, excludeIrrelevantInputsFromTabOrder } from '../../modules/theme-dsfr/src/a11y/conditional-aria.js';

// --- Tests ---

describe('createConditionalDescription', () => {
  it('crée une description pour 1 question parente', () => {
    const desc = createConditionalDescription('q42', ['Votre âge ?']);
    expect(desc.textContent).toBe('Cette question dépend de votre réponse à Votre âge ?.');
    expect(desc.id).toBe('conditional-desc-q42');
    expect(desc.className).toBe('fr-sr-only');
    expect(desc.getAttribute('role')).toBe('note');
  });

  it('crée une description pour 2 questions parentes', () => {
    const desc = createConditionalDescription('q43', ['Votre âge ?', 'Votre ville ?']);
    expect(desc.textContent).toBe(
      'Cette question dépend de vos réponses à Votre âge ? et Votre ville ?.'
    );
  });

  it('crée une description pour 3+ questions parentes', () => {
    const desc = createConditionalDescription('q44', ['Q1', 'Q2', 'Q3']);
    expect(desc.textContent).toBe(
      'Cette question dépend de vos réponses à Q1, Q2 et Q3.'
    );
  });

  it('crée une description générique sans parentes', () => {
    const desc = createConditionalDescription('q50', []);
    expect(desc.textContent).toBe('Cette question est conditionnelle.');
  });

  it('retourne l\'élément existant si déjà dans le DOM', () => {
    const existing = document.createElement('div');
    existing.id = 'conditional-desc-q99';
    existing.textContent = 'Existant';
    document.body.appendChild(existing);

    const result = createConditionalDescription('q99', ['Test']);
    expect(result).toBe(existing);
    expect(result.textContent).toBe('Existant');

    document.body.removeChild(existing);
  });

  it('ne mute pas le tableau passé en paramètre', () => {
    const parents = ['Q1', 'Q2', 'Q3'];
    createConditionalDescription('q55', parents);
    // L'original fait .pop() qui mute — notre version clone
    expect(parents).toEqual(['Q1', 'Q2', 'Q3']);
  });
});

describe('addAriaDescribedBy', () => {
  it('ajoute aria-describedby sur tous les inputs/select/textarea', () => {
    const q = document.createElement('div');
    q.innerHTML = `
      <input type="text" id="i1">
      <textarea id="ta1"></textarea>
      <select id="s1"><option>A</option></select>
    `;

    addAriaDescribedBy(q, 'desc-42');

    expect(q.querySelector('#i1')!.getAttribute('aria-describedby')).toBe('desc-42');
    expect(q.querySelector('#ta1')!.getAttribute('aria-describedby')).toBe('desc-42');
    expect(q.querySelector('#s1')!.getAttribute('aria-describedby')).toBe('desc-42');
  });

  it('ajoute à un aria-describedby existant sans dupliquer', () => {
    const q = document.createElement('div');
    q.innerHTML = '<input type="text" aria-describedby="existing-desc">';

    addAriaDescribedBy(q, 'desc-42');

    expect(q.querySelector('input')!.getAttribute('aria-describedby')).toBe('existing-desc desc-42');
  });

  it('ne duplique pas si déjà présent', () => {
    const q = document.createElement('div');
    q.innerHTML = '<input type="text" aria-describedby="desc-42">';

    addAriaDescribedBy(q, 'desc-42');

    expect(q.querySelector('input')!.getAttribute('aria-describedby')).toBe('desc-42');
  });

  it('ne fait rien s\'il n\'y a pas de champs', () => {
    const q = document.createElement('div');
    q.innerHTML = '<p>Texte</p>';

    expect(() => addAriaDescribedBy(q, 'desc-42')).not.toThrow();
  });
});

describe('excludeIrrelevantInputsFromTabOrder', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('pose tabindex="-1" sur les inputs des questions ls-irrelevant', () => {
    document.body.innerHTML = `
      <div class="question-container ls-irrelevant">
        <input type="text" id="i1">
        <textarea id="ta1"></textarea>
        <select id="s1"><option>A</option></select>
      </div>
    `;

    excludeIrrelevantInputsFromTabOrder();

    expect(document.getElementById('i1')!.getAttribute('tabindex')).toBe('-1');
    expect(document.getElementById('ta1')!.getAttribute('tabindex')).toBe('-1');
    expect(document.getElementById('s1')!.getAttribute('tabindex')).toBe('-1');
  });

  it('pose tabindex="-1" sur les inputs des questions ls-hidden', () => {
    document.body.innerHTML = `
      <div class="question-container ls-hidden">
        <input type="text" id="i1">
      </div>
    `;

    excludeIrrelevantInputsFromTabOrder();

    expect(document.getElementById('i1')!.getAttribute('tabindex')).toBe('-1');
  });

  it('ne touche pas les inputs hidden', () => {
    document.body.innerHTML = `
      <div class="question-container ls-irrelevant">
        <input type="hidden" id="h1">
        <input type="text" id="t1">
      </div>
    `;

    excludeIrrelevantInputsFromTabOrder();

    expect(document.getElementById('h1')!.hasAttribute('tabindex')).toBe(false);
    expect(document.getElementById('t1')!.getAttribute('tabindex')).toBe('-1');
  });

  it('ne touche pas les questions visibles', () => {
    document.body.innerHTML = `
      <div class="question-container">
        <input type="text" id="visible1">
      </div>
    `;

    excludeIrrelevantInputsFromTabOrder();

    expect(document.getElementById('visible1')!.hasAttribute('tabindex')).toBe(false);
  });
});
