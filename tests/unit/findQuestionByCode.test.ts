import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { findQuestionByCode } from '../../modules/theme-dsfr/src/a11y/conditional-aria.js';

// --- Tests ---

describe('findQuestionByCode', () => {
  let container: HTMLDivElement;

  beforeEach(() => {
    container = document.createElement('div');
    document.body.appendChild(container);
  });

  afterEach(() => {
    document.body.removeChild(container);
  });

  it('trouve un élément par data-qcode', () => {
    const el = document.createElement('div');
    el.setAttribute('data-qcode', 'Q1');
    container.appendChild(el);

    expect(findQuestionByCode('Q1')).toBe(el);
  });

  it('trouve un élément par id contenant le code', () => {
    const el = document.createElement('div');
    el.id = 'questionQ42';
    container.appendChild(el);

    expect(findQuestionByCode('Q42')).toBe(el);
  });

  it('préfère data-qcode à id', () => {
    const elByQcode = document.createElement('div');
    elByQcode.setAttribute('data-qcode', 'Q5');
    container.appendChild(elByQcode);

    const elById = document.createElement('div');
    elById.id = 'questionQ5';
    container.appendChild(elById);

    expect(findQuestionByCode('Q5')).toBe(elByQcode);
  });

  it('retourne null si aucun élément ne correspond', () => {
    expect(findQuestionByCode('Q999')).toBeNull();
  });

  it('trouve un code de sous-question (Q2_SQ001)', () => {
    const el = document.createElement('div');
    el.setAttribute('data-qcode', 'Q2_SQ001');
    container.appendChild(el);

    expect(findQuestionByCode('Q2_SQ001')).toBe(el);
  });

  it('fallback sur id partiel quand data-qcode est absent', () => {
    const el = document.createElement('div');
    el.id = 'javatbdQ3_SQ001';
    container.appendChild(el);

    expect(findQuestionByCode('Q3_SQ001')).toBe(el);
  });
});
