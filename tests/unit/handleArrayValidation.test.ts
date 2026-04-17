import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { handleArrayValidation } from '../../modules/theme-dsfr/src/validation/array-validation.js';

// --- Helpers ---

function buildArrayDOM(qid: string, options?: { withErrors?: boolean }): void {
  const errorClasses = options?.withErrors
    ? 'fr-input--error error'
    : '';
  document.body.innerHTML = `
    <div id="${qid}" class="question-container input-error array-5-point">
      <div class="ls-question-mandatory">Ce champ est obligatoire</div>
      <div class="ls-question-mandatory-array">Répondez à toutes les lignes</div>
      <div class="question-valid-container">OK</div>
      <div class="fr-table">
        <table class="ls-answers">
          <thead><tr><th>Q</th><th>1</th><th>2</th></tr></thead>
          <tbody>
            <tr class="ls-mandatory-error">
              <th class="fr-text--error">Ligne 1</th>
              <td class="has-error"><div class="fr-input-group fr-input-group--error">
                <input type="text" class="${errorClasses}">
              </div></td>
              <td class="has-error"><div class="fr-input-group fr-input-group--error">
                <input type="text" class="${errorClasses}">
              </div></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  `;
}

// --- Tests ---

describe('handleArrayValidation', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('masque les messages d\'erreur legacy LimeSurvey', () => {
    buildArrayDOM('question10');
    handleArrayValidation();

    expect((document.querySelector('.ls-question-mandatory') as HTMLElement).style.display).toBe('none');
    expect((document.querySelector('.ls-question-mandatory-array') as HTMLElement).style.display).toBe('none');
    expect((document.querySelector('.question-valid-container') as HTMLElement).style.display).toBe('none');
  });

  it('retire les classes d\'erreur individuelles sur les inputs', () => {
    buildArrayDOM('question10', { withErrors: true });
    handleArrayValidation();

    document.querySelectorAll('table input').forEach((input) => {
      expect(input.classList.contains('fr-input--error')).toBe(false);
      expect(input.classList.contains('error')).toBe(false);
    });
  });

  it('retire fr-input-group--error des cellules', () => {
    buildArrayDOM('question10', { withErrors: true });
    handleArrayValidation();

    document.querySelectorAll('.fr-input-group').forEach((grp) => {
      expect(grp.classList.contains('fr-input-group--error')).toBe(false);
    });
  });

  it('retire ls-mandatory-error des lignes et fr-text--error des th', () => {
    buildArrayDOM('question10');
    handleArrayValidation();

    expect(document.querySelectorAll('tr.ls-mandatory-error').length).toBe(0);
    expect(document.querySelectorAll('th.fr-text--error').length).toBe(0);
  });

  it('retire has-error des cellules td', () => {
    buildArrayDOM('question10');
    handleArrayValidation();

    expect(document.querySelectorAll('td.has-error').length).toBe(0);
  });

  it('crée un compteur global avec aria-live="polite"', () => {
    buildArrayDOM('question10');
    handleArrayValidation();

    const counter = document.getElementById('mandatory-counter-question10');
    expect(counter).not.toBeNull();
    expect(counter!.getAttribute('aria-live')).toBe('polite');
    expect(counter!.querySelector('.fr-message--error')).not.toBeNull();
  });

  it('insère le compteur après le tableau', () => {
    buildArrayDOM('question10');
    handleArrayValidation();

    const table = document.querySelector('.fr-table')!;
    const counter = table.nextElementSibling;
    expect(counter!.id).toBe('mandatory-counter-question10');
  });

  it('ne retraite pas une question déjà attachée', () => {
    buildArrayDOM('question10');
    handleArrayValidation();
    handleArrayValidation();

    expect(document.querySelectorAll('[id^="mandatory-counter-"]').length).toBe(1);
  });

  it('ne fait rien s\'il n\'y a pas de question array en erreur', () => {
    document.body.innerHTML = '<div class="question-container input-error"><input></div>';
    expect(() => handleArrayValidation()).not.toThrow();
    expect(document.querySelector('[id^="mandatory-counter-"]')).toBeNull();
  });
});
