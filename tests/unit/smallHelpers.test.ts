import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { isQuestionHidden } from '../../modules/theme-dsfr/src/core/dom-utils.js';
import { initRadioOtherField } from '../../modules/theme-dsfr/src/inputs/radio-buttons.js';

// initBootstrapButtonsRadio_initState teste l'effet d'initialisation (pas les
// event listeners). La fonction réelle initBootstrapButtonsRadio attache en
// plus des event listeners change — non testables ici. On garde donc une copie
// de la sous-logique état initial seulement. Non-régression des listeners
// couverte par tests/e2e/question-types.spec.ts.

function initBootstrapButtonsRadio_initState(): void {
  const radioGroups = document.querySelectorAll('.radio-list[data-bs-toggle="buttons"]');
  radioGroups.forEach(function (group) {
    const radios = group.querySelectorAll('input[type="radio"]');
    radios.forEach(function (radio) {
      if ((radio as HTMLInputElement).checked) {
        const container = radio.closest('.form-check');
        if (container) container.classList.add('active');
      }
    });
  });
}

// ── Tests ───────────────────────────────────────────────────────────────────

describe('isQuestionHidden', () => {
  it('retourne true si display:none', () => {
    const el = document.createElement('div');
    el.style.display = 'none';
    expect(isQuestionHidden(el)).toBe(true);
  });

  it('retourne true si ls-irrelevant', () => {
    const el = document.createElement('div');
    el.classList.add('ls-irrelevant');
    expect(isQuestionHidden(el)).toBe(true);
  });

  it('retourne true si ls-hidden', () => {
    const el = document.createElement('div');
    el.classList.add('ls-hidden');
    expect(isQuestionHidden(el)).toBe(true);
  });

  it('retourne true si d-none', () => {
    const el = document.createElement('div');
    el.classList.add('d-none');
    expect(isQuestionHidden(el)).toBe(true);
  });

  it('retourne false pour un élément visible', () => {
    const el = document.createElement('div');
    expect(isQuestionHidden(el)).toBe(false);
  });

  it('retourne false si display:block', () => {
    const el = document.createElement('div');
    el.style.display = 'block';
    expect(isQuestionHidden(el)).toBe(false);
  });
});

describe('initBootstrapButtonsRadio — état initial', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('ajoute .active sur le conteneur du radio coché', () => {
    document.body.innerHTML = `
      <div class="radio-list" data-bs-toggle="buttons">
        <div class="bootstrap-buttons-div">
          <div class="form-check"><input type="radio" name="q1" value="A"></div>
          <div class="form-check"><input type="radio" name="q1" value="B" checked></div>
        </div>
      </div>
    `;
    initBootstrapButtonsRadio_initState();

    const checks = document.querySelectorAll('.form-check');
    expect(checks[0].classList.contains('active')).toBe(false);
    expect(checks[1].classList.contains('active')).toBe(true);
  });

  it('n\'ajoute .active sur rien si aucun radio n\'est coché', () => {
    document.body.innerHTML = `
      <div class="radio-list" data-bs-toggle="buttons">
        <div class="bootstrap-buttons-div">
          <div class="form-check"><input type="radio" name="q1" value="A"></div>
          <div class="form-check"><input type="radio" name="q1" value="B"></div>
        </div>
      </div>
    `;
    initBootstrapButtonsRadio_initState();

    document.querySelectorAll('.form-check').forEach((check) => {
      expect(check.classList.contains('active')).toBe(false);
    });
  });
});

describe('initRadioOtherField', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('affiche le champ "Autre" et restaure la valeur si "Autre" est coché', () => {
    document.body.innerHTML = `
      <input type="radio" name="q1" value="-oth-" checked>
      <div id="divq1other" class="ls-js-hidden">
        <input type="text" id="answerq1othertext" value="">
        <input type="hidden" id="answerq1othertextaux" value="Ma réponse">
      </div>
    `;
    initRadioOtherField();

    expect(document.getElementById('divq1other')!.classList.contains('ls-js-hidden')).toBe(false);
    expect((document.getElementById('answerq1othertext') as HTMLInputElement).value).toBe('Ma réponse');
  });

  it('ne fait rien si "Autre" n\'est pas coché', () => {
    document.body.innerHTML = `
      <input type="radio" name="q1" value="-oth-">
      <div id="divq1other" class="ls-js-hidden">
        <input type="text" id="answerq1othertext" value="">
      </div>
    `;
    initRadioOtherField();

    expect(document.getElementById('divq1other')!.classList.contains('ls-js-hidden')).toBe(true);
  });

  it('ne plante pas si le div "Autre" n\'existe pas', () => {
    document.body.innerHTML = '<input type="radio" name="q1" value="-oth-" checked>';
    expect(() => initRadioOtherField()).not.toThrow();
  });

  it('restaure la valeur depuis le champ caché', () => {
    document.body.innerHTML = `
      <input type="radio" name="q2" value="-oth-" checked>
      <div id="divq2other">
        <input type="text" id="answerq2othertext" value="">
        <input type="hidden" id="answerq2othertextaux" value="Sauvegardé">
      </div>
    `;
    initRadioOtherField();

    expect((document.getElementById('answerq2othertext') as HTMLInputElement).value).toBe('Sauvegardé');
  });
});
