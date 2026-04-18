import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { syncAriaInvalidInContainer, syncAllErrorFields } from '../../modules/theme-dsfr/src/validation/aria-invalid-sync.js';

// --- Tests ---

describe('syncAriaInvalidInContainer', () => {
  it('pose aria-invalid="true" sur tous les champs quand hasError=true', () => {
    const container = document.createElement('div');
    container.innerHTML = `
      <input type="text" id="t1">
      <textarea id="ta1"></textarea>
      <select id="s1"><option>A</option></select>
    `;

    syncAriaInvalidInContainer(container, true);

    expect(container.querySelector('#t1')!.getAttribute('aria-invalid')).toBe('true');
    expect(container.querySelector('#ta1')!.getAttribute('aria-invalid')).toBe('true');
    expect(container.querySelector('#s1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('retire aria-invalid quand hasError=false', () => {
    const container = document.createElement('div');
    container.innerHTML = '<input type="text" aria-invalid="true">';

    syncAriaInvalidInContainer(container, false);

    expect(container.querySelector('input')!.hasAttribute('aria-invalid')).toBe(false);
  });

  it('ignore les champs hidden', () => {
    const container = document.createElement('div');
    container.innerHTML = '<input type="hidden" id="h1"><input type="text" id="t1">';

    syncAriaInvalidInContainer(container, true);

    expect(container.querySelector('#h1')!.hasAttribute('aria-invalid')).toBe(false);
    expect(container.querySelector('#t1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('ignore les champs java* (LimeSurvey internal)', () => {
    const container = document.createElement('div');
    container.innerHTML = '<input type="text" id="java42"><input type="text" id="answer42">';

    syncAriaInvalidInContainer(container, true);

    expect(container.querySelector('#java42')!.hasAttribute('aria-invalid')).toBe(false);
    expect(container.querySelector('#answer42')!.getAttribute('aria-invalid')).toBe('true');
  });
});

describe('syncAllErrorFields', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('pose aria-invalid sur les inputs avec .fr-input--error', () => {
    document.body.innerHTML = '<input type="text" class="fr-input--error" id="i1">';
    syncAllErrorFields();
    expect(document.getElementById('i1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('pose aria-invalid sur les inputs avec .error', () => {
    document.body.innerHTML = '<input type="text" class="error" id="i1">';
    syncAllErrorFields();
    expect(document.getElementById('i1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('pose aria-invalid sur les champs dans .question-container.input-error', () => {
    document.body.innerHTML = `
      <div class="question-container input-error">
        <input type="text" id="t1">
        <textarea id="ta1"></textarea>
      </div>
    `;
    syncAllErrorFields();
    expect(document.getElementById('t1')!.getAttribute('aria-invalid')).toBe('true');
    expect(document.getElementById('ta1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('pose aria-invalid sur les champs dans .fr-input-group--error', () => {
    document.body.innerHTML = `
      <div class="fr-input-group fr-input-group--error">
        <input type="text" id="t1">
      </div>
    `;
    syncAllErrorFields();
    expect(document.getElementById('t1')!.getAttribute('aria-invalid')).toBe('true');
  });

  it('ne touche pas les champs sans erreur', () => {
    document.body.innerHTML = `
      <div class="question-container">
        <input type="text" id="ok">
      </div>
    `;
    syncAllErrorFields();
    expect(document.getElementById('ok')!.hasAttribute('aria-invalid')).toBe(false);
  });

  it('traite les deux sources d\'erreur en une passe', () => {
    document.body.innerHTML = `
      <input type="text" class="fr-input--error" id="individual">
      <div class="question-container input-error">
        <input type="text" id="container-child">
      </div>
    `;
    syncAllErrorFields();
    expect(document.getElementById('individual')!.getAttribute('aria-invalid')).toBe('true');
    expect(document.getElementById('container-child')!.getAttribute('aria-invalid')).toBe('true');
  });
});
