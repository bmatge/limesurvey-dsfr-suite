import { describe, it, expect } from 'vitest';

// --- Reproduire la logique de sanitizeElementStyles depuis custom.js (lines 3875-3966) ---

const RTE_STYLE_PROPERTIES = [
  'color',
  'background-color',
  'background',
  'font-size',
  'font-family',
  'font-weight',
  'font-style',
  'text-decoration',
  'text-align',
  'line-height',
  'letter-spacing',
  'text-transform',
  'text-indent',
  'margin',
  'margin-top',
  'margin-right',
  'margin-bottom',
  'margin-left',
  'padding',
  'padding-top',
  'padding-right',
  'padding-bottom',
  'padding-left',
  'border',
  'border-color',
  'border-width',
  'border-style',
];

function shouldSkipElement(element: Element | null): boolean {
  if (!element) return true;
  if (
    element.classList &&
    (element.classList.contains('required-asterisk') ||
      element.classList.contains('asterisk'))
  )
    return true;
  if (element.tagName === 'IMG') return true;
  if (element.querySelector && element.querySelector('img')) return true;
  if (element.closest && element.closest('[class*="upload"]')) return true;
  if (element.closest && element.closest('[class*="file"]')) return true;
  return false;
}

function sanitizeElementStyles(element: Element | null): void {
  if (!element || element.nodeType !== Node.ELEMENT_NODE) return;
  if (shouldSkipElement(element)) return;
  if (!(element as HTMLElement).hasAttribute('style')) return;

  RTE_STYLE_PROPERTIES.forEach((prop) => {
    (element as HTMLElement).style.removeProperty(prop);
  });

  if (
    (element as HTMLElement).getAttribute('style') === '' ||
    (element as HTMLElement).style.cssText.trim() === ''
  ) {
    (element as HTMLElement).removeAttribute('style');
  }
}

// --- Tests ---

describe('sanitizeElementStyles', () => {
  it('supprime les styles de mise en forme (color, font-size, etc.)', () => {
    const el = document.createElement('span');
    el.style.color = 'red';
    el.style.fontSize = '24px';
    el.style.fontFamily = 'Arial';

    sanitizeElementStyles(el);

    expect(el.hasAttribute('style')).toBe(false);
  });

  it('conserve les styles fonctionnels (display, position, etc.)', () => {
    const el = document.createElement('div');
    el.style.display = 'none';
    el.style.position = 'absolute';
    el.style.color = 'red';

    document.body.appendChild(el);
    sanitizeElementStyles(el);
    document.body.removeChild(el);

    expect(el.style.display).toBe('none');
    expect(el.style.position).toBe('absolute');
    expect(el.style.color).toBe('');
  });

  it('supprime l\'attribut style si vide après nettoyage', () => {
    const el = document.createElement('p');
    el.style.textAlign = 'center';
    el.style.lineHeight = '1.5';

    sanitizeElementStyles(el);

    expect(el.hasAttribute('style')).toBe(false);
  });

  it('ne touche pas un élément sans style', () => {
    const el = document.createElement('div');
    el.textContent = 'Hello';

    sanitizeElementStyles(el);

    expect(el.hasAttribute('style')).toBe(false);
    expect(el.textContent).toBe('Hello');
  });

  it('ne touche pas un élément avec required-asterisk', () => {
    const el = document.createElement('span');
    el.classList.add('required-asterisk');
    el.style.color = 'red';

    sanitizeElementStyles(el);

    expect(el.style.color).toBe('red');
  });

  it('ne touche pas un <img>', () => {
    const el = document.createElement('img');
    el.style.border = '1px solid red';

    sanitizeElementStyles(el);

    // img est skippé, le style reste
    expect(el.style.border).not.toBe('');
  });

  it('ne touche pas null', () => {
    expect(() => sanitizeElementStyles(null)).not.toThrow();
  });

  it('gère un mélange de styles à supprimer et à garder', () => {
    const el = document.createElement('div');
    el.setAttribute(
      'style',
      'color: red; display: flex; font-size: 16px; visibility: hidden; margin: 10px; opacity: 0.5;'
    );

    document.body.appendChild(el);
    sanitizeElementStyles(el);
    document.body.removeChild(el);

    expect(el.style.color).toBe('');
    expect(el.style.fontSize).toBe('');
    expect(el.style.margin).toBe('');
    expect(el.style.display).toBe('flex');
    expect(el.style.visibility).toBe('hidden');
    expect(el.style.opacity).toBe('0.5');
  });
});
