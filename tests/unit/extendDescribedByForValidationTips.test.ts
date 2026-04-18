import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { extendDescribedByForValidationTips } from '../../modules/theme-dsfr/src/validation/described-by.js';

describe('extendDescribedByForValidationTips', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('ajoute aria-describedby pointant vers le tip sur un input texte', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip">Saisissez un nombre entre 1 et 10</div>
        <input type="text" id="answer42">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('answer42')!.getAttribute('aria-describedby')).toBe('vmsg_42_tip');
  });

  it('ajoute le tip à un aria-describedby existant', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip">Tip</div>
        <input type="text" id="answer42" aria-describedby="other-desc">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('answer42')!.getAttribute('aria-describedby')).toBe('other-desc vmsg_42_tip');
  });

  it('ne duplique pas le tip si déjà référencé', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip">Tip</div>
        <input type="text" id="answer42" aria-describedby="vmsg_42_tip">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('answer42')!.getAttribute('aria-describedby')).toBe('vmsg_42_tip');
  });

  it('ignore les inputs hidden', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip">Tip</div>
        <input type="hidden" id="hidden42">
        <input type="text" id="answer42">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('hidden42')!.hasAttribute('aria-describedby')).toBe(false);
    expect(document.getElementById('answer42')!.getAttribute('aria-describedby')).toBe('vmsg_42_tip');
  });

  it('traite textarea et select', () => {
    document.body.innerHTML = `
      <div id="question99">
        <div class="ls-questionhelp" id="vmsg_99_tip">Aide</div>
        <textarea id="ta99"></textarea>
        <select id="sel99"><option>A</option></select>
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('ta99')!.getAttribute('aria-describedby')).toBe('vmsg_99_tip');
    expect(document.getElementById('sel99')!.getAttribute('aria-describedby')).toBe('vmsg_99_tip');
  });

  it('marque le tip comme traité (data-describedby-wired="1")', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip">Tip</div>
        <input type="text" id="answer42">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect((document.getElementById('vmsg_42_tip') as HTMLElement).dataset.describedbyWired).toBe('1');
  });

  it('ne retraite pas un tip déjà marqué', () => {
    document.body.innerHTML = `
      <div id="question42">
        <div class="ls-questionhelp" id="vmsg_42_tip" data-describedby-wired="1">Tip</div>
        <input type="text" id="answer42">
      </div>
    `;

    extendDescribedByForValidationTips();

    // Le champ ne devrait pas avoir reçu aria-describedby car le tip est déjà marqué
    expect(document.getElementById('answer42')!.hasAttribute('aria-describedby')).toBe(false);
  });

  it('traite plusieurs questions indépendamment', () => {
    document.body.innerHTML = `
      <div id="question1">
        <div class="ls-questionhelp" id="vmsg_1_tip">Tip 1</div>
        <input type="text" id="answer1">
      </div>
      <div id="question2">
        <div class="ls-questionhelp" id="vmsg_2_tip">Tip 2</div>
        <input type="text" id="answer2">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('answer1')!.getAttribute('aria-describedby')).toBe('vmsg_1_tip');
    expect(document.getElementById('answer2')!.getAttribute('aria-describedby')).toBe('vmsg_2_tip');
  });

  it('ignore les tips en dehors d\'une question', () => {
    document.body.innerHTML = `
      <div>
        <div class="ls-questionhelp" id="vmsg_orphan">Orphelin</div>
        <input type="text" id="orphan-input">
      </div>
    `;

    extendDescribedByForValidationTips();

    expect(document.getElementById('orphan-input')!.hasAttribute('aria-describedby')).toBe(false);
  });
});
