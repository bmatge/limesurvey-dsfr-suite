import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { fixDropdownArrayInlineStyles } from '../../modules/theme-dsfr/src/dropdowns/dropdown-array.js';

// --- Tests ---

describe('fixDropdownArrayInlineStyles', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
    vi.restoreAllMocks();
  });

  it('supprime les styles inline des td sur mobile (< 768px)', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody>
          <tr><td style="display: none;">Cellule</td></tr>
        </tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    expect(document.querySelector('td')!.hasAttribute('style')).toBe(false);
  });

  it('ne fait rien sur desktop (>= 768px)', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(1024);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody>
          <tr><td style="display: none;">Cellule</td></tr>
        </tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    expect(document.querySelector('td')!.getAttribute('style')).toBe('display: none;');
  });

  it('ne fait rien à 768px exactement (frontière)', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(768);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody>
          <tr><td style="display: block;">Cellule</td></tr>
        </tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    expect(document.querySelector('td')!.hasAttribute('style')).toBe(true);
  });

  it('ne touche pas les td sans style display', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody>
          <tr>
            <td style="display: none;">Masquée</td>
            <td style="color: red;">Colorée</td>
            <td>Sans style</td>
          </tr>
        </tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    const cells = document.querySelectorAll('td');
    expect(cells[0].hasAttribute('style')).toBe(false); // display supprimé
    expect(cells[1].getAttribute('style')).toBe('color: red;'); // pas display → intact
    expect(cells[2].hasAttribute('style')).toBe(false); // pas de style
  });

  it('ne touche pas les tableaux sans classe dropdown-array', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="ls-answers">
        <tbody>
          <tr><td style="display: none;">Cellule</td></tr>
        </tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    expect(document.querySelector('td')!.getAttribute('style')).toBe('display: none;');
  });

  it('traite plusieurs tableaux dropdown-array', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody><tr><td style="display: none;">A</td></tr></tbody>
      </table>
      <table class="dropdown-array">
        <tbody><tr><td style="display: block;">B</td></tr></tbody>
      </table>
    `;

    fixDropdownArrayInlineStyles();

    const cells = document.querySelectorAll('td');
    expect(cells[0].hasAttribute('style')).toBe(false);
    expect(cells[1].hasAttribute('style')).toBe(false);
  });
});
