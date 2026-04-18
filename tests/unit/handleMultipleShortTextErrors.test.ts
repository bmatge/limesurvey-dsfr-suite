import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { handleMultipleShortTextErrors } from '../../modules/theme-dsfr/src/validation/mst-errors.js';

// Fake timers : handleMultipleShortTextErrors planifie setTimeout(updateErrorSummary, 50)
// après chaque mutation. On les capture pour que jsdom ne soit pas déjà torn-down
// au moment où ils firent.
beforeEach(() => {
  vi.useFakeTimers();
});
afterEach(() => {
  vi.clearAllTimers();
  vi.useRealTimers();
});

// --- Helpers ---

function buildMultiShortTextDOM(qid: string, itemCount: number): void {
  const items = Array.from({ length: itemCount }, (_, i) => `
    <div class="answer-item input-error ls-error-mandatory has-error">
      <div class="fr-input-group fr-input-group--error">
        <input type="text" value="">
        <div class="fr-messages-group">
          <p class="fr-message fr-message--error">Obligatoire</p>
        </div>
      </div>
    </div>
  `).join('');

  document.body.innerHTML = `
    <div id="${qid}" class="question-container multiple-short-txt input-error">
      <div class="ls-question-mandatory">Ce champ est obligatoire</div>
      <div class="ls-question-mandatory-initial">Veuillez répondre</div>
      <div class="question-valid-container">OK</div>
      <div class="ls-answers">${items}</div>
    </div>
  `;
}

// --- Tests ---

describe('handleMultipleShortTextErrors', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('masque les messages legacy LimeSurvey', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();

    expect((document.querySelector('.ls-question-mandatory') as HTMLElement).style.display).toBe('none');
    expect((document.querySelector('.ls-question-mandatory-initial') as HTMLElement).style.display).toBe('none');
    expect((document.querySelector('.question-valid-container') as HTMLElement).style.display).toBe('none');
  });

  it('retire les classes d\'erreur individuelles sur les answer-items', () => {
    buildMultiShortTextDOM('q10', 3);
    handleMultipleShortTextErrors();

    document.querySelectorAll('.answer-item').forEach((item) => {
      expect(item.classList.contains('input-error')).toBe(false);
      expect(item.classList.contains('ls-error-mandatory')).toBe(false);
      expect(item.classList.contains('has-error')).toBe(false);
    });
  });

  it('retire fr-input-group--error des groupes d\'input', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();

    document.querySelectorAll('.fr-input-group').forEach((grp) => {
      expect(grp.classList.contains('fr-input-group--error')).toBe(false);
    });
  });

  it('supprime les messages fr-message--error individuels', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();

    // Les messages d'erreur individuels dans les answer-items sont supprimés
    document.querySelectorAll('.answer-item .fr-messages-group').forEach((grp) => {
      expect(grp.querySelector('.fr-message--error')).toBeNull();
    });
  });

  it('crée un compteur global avec aria-live="polite"', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();

    const counter = document.getElementById('mandatory-counter-q10');
    expect(counter).not.toBeNull();
    expect(counter!.getAttribute('aria-live')).toBe('polite');
    expect(counter!.querySelector('.fr-message--error')!.getAttribute('role')).toBe('status');
  });

  it('insère le compteur après la liste de réponses', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();

    const answers = document.querySelector('.ls-answers')!;
    expect(answers.nextElementSibling!.id).toBe('mandatory-counter-q10');
  });

  it('ne traite pas une question sans input-error', () => {
    document.body.innerHTML = `
      <div id="q10" class="question-container multiple-short-txt">
        <div class="ls-answers">
          <div class="answer-item"><input type="text" value="ok"></div>
        </div>
      </div>
    `;
    handleMultipleShortTextErrors();
    expect(document.querySelector('[id^="mandatory-counter-"]')).toBeNull();
  });

  it('ne retraite pas une question déjà attachée', () => {
    buildMultiShortTextDOM('q10', 2);
    handleMultipleShortTextErrors();
    handleMultipleShortTextErrors();
    expect(document.querySelectorAll('[id^="mandatory-counter-"]').length).toBe(1);
  });
});
