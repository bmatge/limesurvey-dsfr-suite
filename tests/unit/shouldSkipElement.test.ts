import { describe, it, expect } from 'vitest';
import { shouldSkipElement } from '../../modules/theme-dsfr/src/rte/sanitize.js';

describe('shouldSkipElement', () => {
  it('retourne true pour null', () => {
    expect(shouldSkipElement(null)).toBe(true);
  });

  it('retourne true pour un élément avec classe required-asterisk', () => {
    const el = document.createElement('span');
    el.classList.add('required-asterisk');
    expect(shouldSkipElement(el)).toBe(true);
  });

  it('retourne true pour un élément avec classe asterisk', () => {
    const el = document.createElement('span');
    el.classList.add('asterisk');
    expect(shouldSkipElement(el)).toBe(true);
  });

  it('retourne true pour un <img>', () => {
    const el = document.createElement('img');
    expect(shouldSkipElement(el)).toBe(true);
  });

  it('retourne true pour un élément contenant un <img>', () => {
    const el = document.createElement('div');
    el.appendChild(document.createElement('img'));
    expect(shouldSkipElement(el)).toBe(true);
  });

  it('retourne true pour un élément dans un conteneur upload', () => {
    const container = document.createElement('div');
    container.className = 'file-upload-container';
    const el = document.createElement('span');
    container.appendChild(el);
    document.body.appendChild(container);
    expect(shouldSkipElement(el)).toBe(true);
    document.body.removeChild(container);
  });

  it('retourne true pour un élément dans un conteneur file', () => {
    const container = document.createElement('div');
    container.className = 'file-manager';
    const el = document.createElement('span');
    container.appendChild(el);
    document.body.appendChild(container);
    expect(shouldSkipElement(el)).toBe(true);
    document.body.removeChild(container);
  });

  it('retourne false pour un div normal', () => {
    const el = document.createElement('div');
    el.textContent = 'Hello';
    document.body.appendChild(el);
    expect(shouldSkipElement(el)).toBe(false);
    document.body.removeChild(el);
  });

  it('retourne false pour un span avec une classe quelconque', () => {
    const el = document.createElement('span');
    el.classList.add('fr-label');
    document.body.appendChild(el);
    expect(shouldSkipElement(el)).toBe(false);
    document.body.removeChild(el);
  });
});
