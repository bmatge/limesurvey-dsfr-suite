import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { handleRequiredFields } from '../../modules/theme-dsfr/src/validation/required-fields.js';

// --- Tests ---

describe('handleRequiredFields', () => {
  beforeEach(() => { document.body.innerHTML = ''; });
  afterEach(() => { document.body.innerHTML = ''; });

  describe('labels required', () => {
    it('ajoute .has-required-field sur le label associé par for=', () => {
      document.body.innerHTML = `
        <label for="email" class="fr-label">Email</label>
        <input type="email" id="email" required>
        <div id="question1" class="question-container"><div></div></div>
      `;
      handleRequiredFields();
      expect(document.querySelector('label')!.classList.contains('has-required-field')).toBe(true);
    });

    it('ajoute .has-required-field sur le label parent', () => {
      document.body.innerHTML = `
        <label class="fr-label"><input type="text" required> Nom</label>
        <div id="question1" class="question-container"><div></div></div>
      `;
      handleRequiredFields();
      expect(document.querySelector('label')!.classList.contains('has-required-field')).toBe(true);
    });

    it('ajoute .has-required-field sur le label dans .fr-input-group', () => {
      document.body.innerHTML = `
        <div class="fr-input-group">
          <label class="fr-label">Nom</label>
          <input type="text" required>
        </div>
        <div id="question1" class="question-container"><div></div></div>
      `;
      handleRequiredFields();
      expect(document.querySelector('.fr-label')!.classList.contains('has-required-field')).toBe(true);
    });

    it('ajoute .has-required-field sur la legend dans un fieldset', () => {
      document.body.innerHTML = `
        <fieldset>
          <legend class="fr-fieldset__legend">Choix</legend>
          <input type="radio" required>
        </fieldset>
        <div id="question1" class="question-container"><div></div></div>
      `;
      handleRequiredFields();
      expect(document.querySelector('.fr-fieldset__legend')!.classList.contains('has-required-field')).toBe(true);
    });

    it('ne duplique pas .has-required-field', () => {
      document.body.innerHTML = `
        <label for="f1" class="fr-label has-required-field">Nom</label>
        <input type="text" id="f1" required>
        <div id="question1" class="question-container"><div></div></div>
      `;
      handleRequiredFields();
      // Toujours une seule fois dans le classList
      expect(document.querySelector('label')!.className).toBe('fr-label has-required-field');
    });
  });

  describe('astérisques sur questions .mandatory', () => {
    it('injecte un astérisque dans le titre de la question', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Votre nom</h3>
          <input type="text">
        </div>
      `;
      handleRequiredFields();
      const asterisk = document.querySelector('.required-asterisk');
      expect(asterisk).not.toBeNull();
      expect(asterisk!.getAttribute('aria-hidden')).toBe('true');
      expect(asterisk!.textContent).toBe('* ');
    });

    it('insère l\'astérisque après .question-number si présent', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text"><span class="question-number">Q1.</span> Votre nom</h3>
          <input type="text">
        </div>
      `;
      handleRequiredFields();
      const h3 = document.querySelector('.question-text')!;
      const children = Array.from(h3.childNodes);
      const numberIdx = children.findIndex((n) => (n as Element).classList?.contains('question-number'));
      const asteriskIdx = children.findIndex((n) => (n as Element).classList?.contains('required-asterisk'));
      expect(asteriskIdx).toBe(numberIdx + 1);
    });

    it('ne duplique pas l\'astérisque', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Votre nom</h3>
          <input type="text">
        </div>
      `;
      handleRequiredFields();
      handleRequiredFields();
      expect(document.querySelectorAll('.required-asterisk').length).toBe(1);
    });

    it('fallback sur .ls-label-question si pas de .question-text', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="ls-label-question">Votre ville</h3>
          <input type="text">
        </div>
      `;
      handleRequiredFields();
      expect(document.querySelector('.required-asterisk')).not.toBeNull();
    });
  });

  describe('aria-required sur les inputs', () => {
    it('ajoute aria-required="true" sur les inputs texte des questions mandatory', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Nom</h3>
          <input type="text" id="answer1">
        </div>
      `;
      handleRequiredFields();
      expect(document.getElementById('answer1')!.getAttribute('aria-required')).toBe('true');
    });

    it('n\'ajoute pas aria-required sur les inputs hidden', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Nom</h3>
          <input type="hidden" id="java1">
          <input type="text" id="answer1">
        </div>
      `;
      handleRequiredFields();
      expect(document.getElementById('java1')!.hasAttribute('aria-required')).toBe(false);
    });

    it('n\'ajoute pas aria-required sur les inputs disabled', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Nom</h3>
          <input type="text" id="answer1" disabled>
        </div>
      `;
      handleRequiredFields();
      expect(document.getElementById('answer1')!.hasAttribute('aria-required')).toBe(false);
    });

    it('ne remplace pas un aria-required existant', () => {
      document.body.innerHTML = `
        <div id="question1" class="mandatory question-container">
          <h3 class="question-text">Nom</h3>
          <input type="text" id="answer1" aria-required="true">
        </div>
      `;
      handleRequiredFields();
      // Pas de changement, pas de doublon
      expect(document.getElementById('answer1')!.getAttribute('aria-required')).toBe('true');
    });
  });

  describe('notice "champs obligatoires"', () => {
    it('insère la notice avant la première question', () => {
      document.body.innerHTML = `
        <div>
          <div id="question1" class="mandatory question-container">
            <h3 class="question-text">Nom</h3>
            <input type="text">
          </div>
        </div>
      `;
      handleRequiredFields();
      const notice = document.getElementById('required-fields-notice');
      expect(notice).not.toBeNull();
      expect(notice!.textContent).toContain('obligatoires');
    });

    it('ne duplique pas la notice', () => {
      document.body.innerHTML = `
        <div>
          <div id="question1" class="mandatory question-container">
            <h3 class="question-text">Nom</h3>
            <input type="text">
          </div>
        </div>
      `;
      handleRequiredFields();
      handleRequiredFields();
      expect(document.querySelectorAll('#required-fields-notice').length).toBe(1);
    });

    it('ne fait rien s\'il n\'y a aucun champ obligatoire', () => {
      document.body.innerHTML = '<div><input type="text"></div>';
      handleRequiredFields();
      expect(document.getElementById('required-fields-notice')).toBeNull();
    });
  });
});
