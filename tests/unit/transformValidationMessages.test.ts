import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { transformValidationMessages } from '../../modules/theme-dsfr/src/validation/validation-messages.js';

// --- Tests ---

describe('transformValidationMessages', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  it('transforme un message d\'erreur LS en fr-message--error', () => {
    document.body.innerHTML = '<div class="ls-question-message ls-em-error" id="vmsg_42">Erreur de saisie</div>';

    transformValidationMessages();

    const msg = document.querySelector('.fr-message--error')!;
    expect(msg).not.toBeNull();
    expect(msg.textContent).toBe('Erreur de saisie');
    expect(msg.tagName).toBe('P');
    expect(msg.id).toBe('vmsg_42-dsfr');
  });

  it('transforme un message warning LS en fr-message--warning', () => {
    document.body.innerHTML = '<div class="ls-question-message ls-em-warning">Attention</div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message--warning')!.textContent).toBe('Attention');
  });

  it('transforme un message tip LS en fr-message--info', () => {
    document.body.innerHTML = '<div class="ls-question-message ls-em-tip">Saisissez un nombre</div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message--info')!.textContent).toBe('Saisissez un nombre');
  });

  it('transforme un message success LS en fr-message--info', () => {
    document.body.innerHTML = '<div class="ls-question-message ls-em-success">Valide</div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message--info')!.textContent).toBe('Valide');
  });

  it('transforme un message sans classe spécifique en fr-message--info (défaut)', () => {
    document.body.innerHTML = '<div class="ls-question-message">Info générique</div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message--info')!.textContent).toBe('Info générique');
  });

  it('ne retransforme pas un message déjà traité', () => {
    document.body.innerHTML = '<p class="fr-message fr-message--error ls-question-message">Déjà traité</p>';

    transformValidationMessages();

    // Le message a déjà fr-message → skip
    expect(document.querySelectorAll('.fr-message').length).toBe(1);
  });

  it('traite plusieurs messages en une passe', () => {
    document.body.innerHTML = `
      <div class="ls-question-message ls-em-error">Erreur 1</div>
      <div class="ls-question-message ls-em-tip">Tip 1</div>
      <div class="ls-question-message ls-em-warning">Warning 1</div>
    `;

    transformValidationMessages();

    expect(document.querySelectorAll('.fr-message').length).toBe(3);
    expect(document.querySelector('.fr-message--error')!.textContent).toBe('Erreur 1');
    expect(document.querySelector('.fr-message--info')!.textContent).toBe('Tip 1');
    expect(document.querySelector('.fr-message--warning')!.textContent).toBe('Warning 1');
  });

  it('strip les espaces dans le textContent', () => {
    document.body.innerHTML = '<div class="ls-question-message">  Avec   espaces  </div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message')!.textContent).toBe('Avec   espaces');
  });

  it('gère un id vide correctement', () => {
    document.body.innerHTML = '<div class="ls-question-message">Sans id</div>';

    transformValidationMessages();

    expect(document.querySelector('.fr-message')!.id).toBe('');
  });
});
