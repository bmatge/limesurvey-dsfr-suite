import { describe, it, expect, afterEach } from 'vitest';
import { getQuestionText } from '../../modules/theme-dsfr/src/a11y/conditional-aria.js';

// --- Tests ---

describe('getQuestionText', () => {
  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('retourne le texte du titre (h3 avec id ls-question-text-*)', () => {
    const q = document.createElement('div');
    const h3 = document.createElement('h3');
    h3.id = 'ls-question-text-42';
    h3.textContent = 'Quel est votre nom ?';
    q.appendChild(h3);

    expect(getQuestionText(q)).toBe('Quel est votre nom ?');
  });

  it('tronque le texte à 50 caractères avec "..."', () => {
    const q = document.createElement('div');
    const h3 = document.createElement('h3');
    h3.id = 'ls-question-text-99';
    h3.textContent = 'Cette question a un texte beaucoup trop long qui dépasse cinquante caractères facilement';
    q.appendChild(h3);

    const result = getQuestionText(q);
    expect(result.length).toBe(53); // 50 + "..."
    expect(result).toBe('Cette question a un texte beaucoup trop long qui d...');
  });

  it('ne tronque pas un texte de 50 caractères exactement', () => {
    const q = document.createElement('div');
    const h3 = document.createElement('h3');
    h3.id = 'ls-question-text-1';
    h3.textContent = '12345678901234567890123456789012345678901234567890'; // 50 chars
    q.appendChild(h3);

    expect(getQuestionText(q)).toBe('12345678901234567890123456789012345678901234567890');
  });

  it('strip les espaces autour du texte', () => {
    const q = document.createElement('div');
    const h3 = document.createElement('h3');
    h3.id = 'ls-question-text-5';
    h3.textContent = '   Votre âge ?   ';
    q.appendChild(h3);

    expect(getQuestionText(q)).toBe('Votre âge ?');
  });

  it('extrait le textContent même si le titre contient du HTML', () => {
    const q = document.createElement('div');
    const h3 = document.createElement('h3');
    h3.id = 'ls-question-text-10';
    h3.innerHTML = '<span class="question-number">Q1.</span> Votre <strong>nom</strong> ?';
    q.appendChild(h3);

    expect(getQuestionText(q)).toBe('Q1. Votre nom ?');
  });

  it('fallback sur .fr-text--xs si pas de titre ls-question-text-*', () => {
    const q = document.createElement('div');
    const num = document.createElement('span');
    num.className = 'fr-text--xs';
    num.textContent = 'Question 7';
    q.appendChild(num);

    expect(getQuestionText(q)).toBe('Question 7');
  });

  it('retourne "la question précédente" si rien n\'est trouvé', () => {
    const q = document.createElement('div');
    expect(getQuestionText(q)).toBe('la question précédente');
  });
});
