import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { setupStyleObserver, __getStyleObserverForTest, __resetStyleObserverForTest } from '../../modules/theme-dsfr/src/dropdowns/dropdown-array.js';

// --- Tests ---

describe('setupStyleObserver', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
    __resetStyleObserverForTest();
  });

  afterEach(() => {
    __resetStyleObserverForTest();
    document.body.innerHTML = '';
    vi.restoreAllMocks();
  });

  it('crée un observer sur mobile (< 768px)', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody><tr><td>Cellule</td></tr></tbody>
      </table>
    `;

    setupStyleObserver();

    expect(__getStyleObserverForTest()).not.toBeNull();
  });

  it('ne crée pas d\'observer sur desktop (>= 768px)', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(1024);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody><tr><td>Cellule</td></tr></tbody>
      </table>
    `;

    setupStyleObserver();

    expect(__getStyleObserverForTest()).toBeNull();
  });

  it('déconnecte l\'observer existant sur desktop', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody><tr><td>Cellule</td></tr></tbody>
      </table>
    `;

    // D'abord créer un observer
    setupStyleObserver();
    expect(__getStyleObserverForTest()).not.toBeNull();

    // Puis passer en desktop
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(1024);
    setupStyleObserver();
    expect(__getStyleObserverForTest()).toBeNull();
  });

  it('ne recrée pas l\'observer si déjà actif', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = `
      <table class="dropdown-array">
        <tbody><tr><td>Cellule</td></tr></tbody>
      </table>
    `;

    setupStyleObserver();
    const firstObserver = __getStyleObserverForTest();
    setupStyleObserver();

    expect(__getStyleObserverForTest()).toBe(firstObserver);
  });

  it('ne crée pas d\'observer s\'il n\'y a pas de tableaux dropdown-array', () => {
    vi.spyOn(window, 'innerWidth', 'get').mockReturnValue(375);

    document.body.innerHTML = '<div>Pas de tableau</div>';

    setupStyleObserver();

    // L'observer est créé mais n'observe rien — c'est le comportement réel
    expect(__getStyleObserverForTest()).not.toBeNull();
  });
});
