import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import {
  initSearchableDropdowns,
  upgradeToCombobox,
} from '../../modules/theme-dsfr/src/dropdowns/combobox.js';

function buildSelect({
  id = 'answer1',
  ariaLabelledBy = 'ls-q-1',
  options = [
    { value: '', label: 'Veuillez choisir ...', selected: true },
    { value: 'AO02', label: 'Réponse 1' },
    { value: 'AO03', label: 'Réponse 2' },
    { value: 'AO04', label: 'Réponse 3' },
    { value: 'AO05', label: 'République' },
  ],
} = {}): HTMLSelectElement {
  const container = document.createElement('div');
  container.className = 'ls-answers';
  const select = document.createElement('select');
  select.className = 'form-control list-question-select dsfr-input';
  select.name = id;
  select.id = id;
  select.setAttribute('aria-labelledby', ariaLabelledBy);
  options.forEach((o) => {
    const opt = document.createElement('option');
    opt.value = o.value;
    opt.textContent = o.label;
    if (o.selected) opt.selected = true;
    select.appendChild(opt);
  });
  container.appendChild(select);
  document.body.appendChild(container);
  return select;
}

function fireKey(el: Element, key: string) {
  const ev = new KeyboardEvent('keydown', { key, bubbles: true, cancelable: true });
  el.dispatchEvent(ev);
  return ev;
}

describe('DSFR combobox — upgrade DOM', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('transforme un select.list-question-select en combobox ARIA', () => {
    buildSelect();
    initSearchableDropdowns();

    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]');
    const listbox = document.querySelector<HTMLUListElement>('ul[role="listbox"]');

    expect(input).not.toBeNull();
    expect(listbox).not.toBeNull();
    expect(input!.getAttribute('aria-autocomplete')).toBe('list');
    expect(input!.getAttribute('aria-expanded')).toBe('false');
    expect(input!.getAttribute('aria-controls')).toBe(listbox!.id);
    expect(input!.getAttribute('aria-labelledby')).toBe('ls-q-1');
    expect(listbox!.querySelectorAll('li[role="option"]')).toHaveLength(5);
    expect(listbox!.hidden).toBe(true);
  });

  it("conserve le <select> d'origine (caché, pour submit et EM)", () => {
    buildSelect();
    initSearchableDropdowns();

    const select = document.querySelector<HTMLSelectElement>('select');
    expect(select).not.toBeNull();
    expect(select!.getAttribute('data-dsfr-combobox')).toBe('1');
    expect(select!.getAttribute('aria-hidden')).toBe('true');
  });

  it('idempotent : un second appel ne duplique pas le wrapper', () => {
    buildSelect();
    initSearchableDropdowns();
    initSearchableDropdowns();

    expect(document.querySelectorAll('[data-dsfr-combobox-wrapper]')).toHaveLength(1);
  });

  it('unwrap un éventuel wrapper .bootstrap-select construit avant', () => {
    const container = document.createElement('div');
    container.className = 'ls-answers';
    const bsWrap = document.createElement('div');
    bsWrap.className = 'dropdown bootstrap-select form-control bs3';
    const select = document.createElement('select');
    select.className = 'form-control list-question-select dsfr-input';
    const opt = document.createElement('option');
    opt.value = 'A';
    opt.textContent = 'A';
    select.appendChild(opt);
    bsWrap.appendChild(select);
    container.appendChild(bsWrap);
    document.body.appendChild(container);

    upgradeToCombobox(select);

    expect(container.querySelector('.bootstrap-select')).toBeNull();
    expect(container.querySelector('[data-dsfr-combobox-wrapper]')).not.toBeNull();
  });
});

describe('DSFR combobox — filtrage et navigation', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('filtre les options par inclusion case-insensitive et accent-folded', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;

    input.value = 'repu';
    input.dispatchEvent(new Event('input', { bubbles: true }));

    const visible = Array.from(document.querySelectorAll<HTMLLIElement>('li[role="option"]'))
      .filter((li) => !li.hidden)
      .map((li) => li.textContent);
    expect(visible).toEqual(['République']);
  });

  it('annonce le nombre de résultats via role=status', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;

    input.value = 'Rép';
    input.dispatchEvent(new Event('input', { bubbles: true }));

    const status = document.querySelector<HTMLDivElement>('.dsfr-combobox-status')!;
    expect(status.textContent).toMatch(/4 résultats/);
  });

  it('ouvre la liste sur ArrowDown et descend la sélection active', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;
    const listbox = document.querySelector<HTMLUListElement>('ul[role="listbox"]')!;

    fireKey(input, 'ArrowDown');
    expect(listbox.hidden).toBe(false);
    expect(input.getAttribute('aria-expanded')).toBe('true');
    expect(input.getAttribute('aria-activedescendant')).toBeTruthy();

    const firstActiveId = input.getAttribute('aria-activedescendant');
    fireKey(input, 'ArrowDown');
    expect(input.getAttribute('aria-activedescendant')).not.toBe(firstActiveId);
  });

  it('sélectionne sur Enter et met à jour le select + dispatch change', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;
    const select = document.querySelector<HTMLSelectElement>('select')!;
    const changeSpy = vi.fn();
    select.addEventListener('change', changeSpy);

    input.value = 'Réponse 1';
    input.dispatchEvent(new Event('input', { bubbles: true }));
    fireKey(input, 'ArrowDown');
    fireKey(input, 'Enter');

    expect(select.value).toBe('AO02');
    expect(changeSpy).toHaveBeenCalledTimes(1);
    expect(input.value).toBe('Réponse 1');
  });

  it('ferme la liste sur Escape, vide la valeur au second Escape', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;

    fireKey(input, 'ArrowDown');
    expect(input.getAttribute('aria-expanded')).toBe('true');
    fireKey(input, 'Escape');
    expect(input.getAttribute('aria-expanded')).toBe('false');

    input.value = 'abc';
    fireKey(input, 'Escape');
    expect(input.value).toBe('');
  });

  it('Home/End sautent à la première / dernière option visible', () => {
    buildSelect();
    initSearchableDropdowns();
    const input = document.querySelector<HTMLInputElement>('input[role="combobox"]')!;

    fireKey(input, 'ArrowDown'); // ouvre
    fireKey(input, 'End');
    const endId = input.getAttribute('aria-activedescendant');
    const listbox = document.querySelector<HTMLUListElement>('ul[role="listbox"]')!;
    const lastOption = listbox.children[listbox.children.length - 1] as HTMLElement;
    expect(endId).toBe(lastOption.id);

    fireKey(input, 'Home');
    const homeId = input.getAttribute('aria-activedescendant');
    const firstOption = listbox.children[0] as HTMLElement;
    expect(homeId).toBe(firstOption.id);
  });
});

describe('DSFR combobox — sécurité XSS (ADR-006)', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
    delete (window as any).__xssMarker;
  });

  it("n'exécute pas un payload <img onerror> présent dans un label d'option", () => {
    buildSelect({
      options: [
        { value: '', label: 'Veuillez choisir', selected: true },
        { value: 'x', label: '<img src=x onerror="window.__xssMarker=1">' },
      ],
    });
    initSearchableDropdowns();

    const listbox = document.querySelector<HTMLUListElement>('ul[role="listbox"]')!;
    // Pas d'image injectée, textContent uniquement.
    expect(listbox.querySelector('img')).toBeNull();
    expect((window as any).__xssMarker).toBeUndefined();
    // Le texte reste littéral.
    const li = listbox.children[1] as HTMLElement;
    expect(li.textContent).toContain('<img');
  });
});
