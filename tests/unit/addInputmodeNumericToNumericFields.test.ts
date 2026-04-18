import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { addInputmodeNumericToNumericFields } from '../../modules/theme-dsfr/src/inputs/numeric-inputmode.js';

describe('addInputmodeNumericToNumericFields', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('ajoute inputmode="numeric" sur un input avec data-number="1"', () => {
    document.body.innerHTML = '<input type="text" data-number="1" id="num1">';
    addInputmodeNumericToNumericFields();
    expect(document.getElementById('num1')!.getAttribute('inputmode')).toBe('numeric');
  });

  it('ne remplace pas un inputmode déjà défini', () => {
    document.body.innerHTML = '<input type="text" data-number="1" id="num1" inputmode="decimal">';
    addInputmodeNumericToNumericFields();
    expect(document.getElementById('num1')!.getAttribute('inputmode')).toBe('decimal');
  });

  it('ne touche pas les inputs sans data-number="1"', () => {
    document.body.innerHTML = '<input type="text" id="text1">';
    addInputmodeNumericToNumericFields();
    expect(document.getElementById('text1')!.hasAttribute('inputmode')).toBe(false);
  });

  it('ne touche pas les inputs avec data-number="0"', () => {
    document.body.innerHTML = '<input type="text" data-number="0" id="text1">';
    addInputmodeNumericToNumericFields();
    expect(document.getElementById('text1')!.hasAttribute('inputmode')).toBe(false);
  });

  it('marque les inputs traités avec data-inputmode-wired="1"', () => {
    document.body.innerHTML = '<input type="text" data-number="1" id="num1">';
    addInputmodeNumericToNumericFields();
    expect((document.getElementById('num1') as HTMLElement).dataset.inputmodeWired).toBe('1');
  });

  it('ne retraite pas un input déjà marqué', () => {
    document.body.innerHTML = '<input type="text" data-number="1" id="num1" data-inputmode-wired="1">';
    addInputmodeNumericToNumericFields();
    // Pas d'inputmode ajouté car déjà wired
    expect(document.getElementById('num1')!.hasAttribute('inputmode')).toBe(false);
  });

  it('traite plusieurs inputs numériques', () => {
    document.body.innerHTML = `
      <input type="text" data-number="1" id="num1">
      <input type="text" data-number="1" id="num2">
      <input type="text" id="text1">
    `;
    addInputmodeNumericToNumericFields();

    expect(document.getElementById('num1')!.getAttribute('inputmode')).toBe('numeric');
    expect(document.getElementById('num2')!.getAttribute('inputmode')).toBe('numeric');
    expect(document.getElementById('text1')!.hasAttribute('inputmode')).toBe(false);
  });

  it('est idempotent (double appel ne change rien)', () => {
    document.body.innerHTML = '<input type="text" data-number="1" id="num1">';
    addInputmodeNumericToNumericFields();
    addInputmodeNumericToNumericFields();
    expect(document.getElementById('num1')!.getAttribute('inputmode')).toBe('numeric');
  });
});
