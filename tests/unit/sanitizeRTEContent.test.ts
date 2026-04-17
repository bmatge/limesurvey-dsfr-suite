import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { sanitizeRTEContent } from '../../modules/theme-dsfr/src/rte/sanitize.js';

// Silence les console.log du module de production pendant les tests
beforeEach(() => {
  vi.spyOn(console, 'log').mockImplementation(() => {});
});
afterEach(() => {
  vi.restoreAllMocks();
});

describe('sanitizeRTEContent', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    delete (window as any).LSThemeOptions;
    document.body.innerHTML = '';
  });

  it('ne fait rien si LSThemeOptions est absent', () => {
    const container = document.createElement('div');
    container.className = 'question-title-container';
    const p = document.createElement('p');
    p.style.color = 'red';
    container.appendChild(p);
    document.body.appendChild(container);

    sanitizeRTEContent();

    expect(p.style.color).toBe('red');
  });

  it('ne fait rien si sanitize_rte_content !== "on"', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'off' };

    const container = document.createElement('div');
    container.className = 'question-title-container';
    const p = document.createElement('p');
    p.style.color = 'red';
    container.appendChild(p);
    document.body.appendChild(container);

    sanitizeRTEContent();

    expect(p.style.color).toBe('red');
  });

  it('nettoie les styles dans .question-title-container quand activé', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'on' };

    const container = document.createElement('div');
    container.className = 'question-title-container';
    const p = document.createElement('p');
    p.style.color = 'red';
    p.style.fontSize = '18px';
    container.appendChild(p);
    document.body.appendChild(container);

    sanitizeRTEContent();

    expect(p.hasAttribute('style')).toBe(false);
  });

  it('nettoie les styles dans .question-help-container quand activé', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'on' };

    const container = document.createElement('div');
    container.className = 'question-help-container';
    const span = document.createElement('span');
    span.style.fontWeight = 'bold';
    span.style.textDecoration = 'underline';
    container.appendChild(span);
    document.body.appendChild(container);

    sanitizeRTEContent();

    expect(span.hasAttribute('style')).toBe(false);
  });

  it('nettoie les deux types de conteneurs en une passe', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'on' };

    const title = document.createElement('div');
    title.className = 'question-title-container';
    const titleP = document.createElement('p');
    titleP.style.color = 'blue';
    title.appendChild(titleP);

    const help = document.createElement('div');
    help.className = 'question-help-container';
    const helpP = document.createElement('p');
    helpP.style.fontFamily = 'Arial';
    help.appendChild(helpP);

    document.body.appendChild(title);
    document.body.appendChild(help);

    sanitizeRTEContent();

    expect(titleP.hasAttribute('style')).toBe(false);
    expect(helpP.hasAttribute('style')).toBe(false);
  });

  it('conserve les styles fonctionnels dans les conteneurs RTE', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'on' };

    const container = document.createElement('div');
    container.className = 'question-title-container';
    const div = document.createElement('div');
    div.setAttribute('style', 'display: flex; color: red; visibility: hidden;');
    container.appendChild(div);
    document.body.appendChild(container);

    sanitizeRTEContent();

    expect(div.style.display).toBe('flex');
    expect(div.style.visibility).toBe('hidden');
    expect(div.style.color).toBe('');
  });

  it('ne touche pas les éléments en dehors des sélecteurs RTE', () => {
    (window as any).LSThemeOptions = { sanitize_rte_content: 'on' };

    const outside = document.createElement('div');
    outside.className = 'some-other-container';
    const p = document.createElement('p');
    p.style.color = 'green';
    outside.appendChild(p);
    document.body.appendChild(outside);

    sanitizeRTEContent();

    expect(p.style.color).toBe('green');
  });
});
