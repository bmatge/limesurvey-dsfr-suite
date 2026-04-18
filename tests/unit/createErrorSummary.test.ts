import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { createErrorSummary } from '../../modules/theme-dsfr/src/validation/error-summary.js';

// jsdom n'implémente pas scrollIntoView — stub global pour que les setTimeout
// déclenchés par createErrorSummary (scroll + focus) ne plantent pas après coup.
(Element.prototype as unknown as { scrollIntoView: () => void }).scrollIntoView = () => {};

// --- Helpers ---

function addErrorQuestion(id: string, text: string, errorMsg?: string): void {
  const q = document.createElement('div');
  q.id = id;
  q.className = 'question-container input-error';

  const label = document.createElement('h3');
  label.className = 'question-text';
  label.textContent = text;
  q.appendChild(label);

  if (errorMsg) {
    const msg = document.createElement('p');
    msg.className = 'fr-message fr-message--error';
    msg.textContent = errorMsg;
    q.appendChild(msg);
  }

  document.getElementById('questions')!.appendChild(q);
}

// --- Tests ---

describe('createErrorSummary', () => {
  beforeEach(() => {
    document.body.innerHTML = '<div id="questions"></div>';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('crée un résumé avec role="alert" et tabindex="-1"', () => {
    addErrorQuestion('question1', 'Votre nom', 'Ce champ est obligatoire');

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary).not.toBeNull();
    expect(summary.getAttribute('role')).toBe('alert');
    expect(summary.getAttribute('tabindex')).toBe('-1');
  });

  it('affiche "Une erreur a été détectée" pour 1 erreur', () => {
    addErrorQuestion('question1', 'Votre nom', 'Obligatoire');

    createErrorSummary();

    const title = document.querySelector('.fr-alert__title')!;
    expect(title.textContent).toBe('Une erreur a été détectée');
  });

  it('affiche "N erreurs ont été détectées" pour plusieurs erreurs', () => {
    addErrorQuestion('question1', 'Nom', 'Obligatoire');
    addErrorQuestion('question2', 'Prénom', 'Obligatoire');
    addErrorQuestion('question3', 'Email', 'Format invalide');

    createErrorSummary();

    const title = document.querySelector('.fr-alert__title')!;
    expect(title.textContent).toBe('3 erreurs ont été détectées');
  });

  it('crée un lien par question en erreur avec href="#questionId"', () => {
    addErrorQuestion('question42', 'Votre âge', 'Obligatoire');
    addErrorQuestion('question43', 'Votre ville');

    createErrorSummary();

    const links = document.querySelectorAll('#dsfr-error-summary a');
    expect(links.length).toBe(2);
    expect(links[0].getAttribute('href')).toBe('#question42');
    expect(links[1].getAttribute('href')).toBe('#question43');
  });

  it('combine le texte de la question et le message d\'erreur', () => {
    addErrorQuestion('question1', 'Votre nom', 'Ce champ est obligatoire');

    createErrorSummary();

    const link = document.querySelector('#dsfr-error-summary a')!;
    expect(link.textContent).toBe('Votre nom : Ce champ est obligatoire');
  });

  it('affiche "Question sans titre" si pas de texte de question', () => {
    const q = document.createElement('div');
    q.id = 'question99';
    q.className = 'question-container input-error';
    document.getElementById('questions')!.appendChild(q);

    createErrorSummary();

    const link = document.querySelector('#dsfr-error-summary a')!;
    expect(link.textContent).toBe('Question sans titre');
  });

  it('tronque les labels longs à 150 caractères', () => {
    const longText = 'A'.repeat(200);
    addErrorQuestion('question1', longText);

    createErrorSummary();

    const link = document.querySelector('#dsfr-error-summary a')!;
    expect(link.textContent!.length).toBe(150);
    expect(link.textContent!.endsWith('...')).toBe(true);
  });

  it('est inséré avant la première question', () => {
    addErrorQuestion('question1', 'Q1', 'Erreur');

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    const firstQuestion = document.querySelector('.question-container')!;
    expect(summary.nextElementSibling).toBe(firstQuestion);
  });

  it('remplace l\'ancien résumé s\'il existe', () => {
    addErrorQuestion('question1', 'Q1', 'Erreur');

    createErrorSummary();
    createErrorSummary();

    const summaries = document.querySelectorAll('#dsfr-error-summary');
    expect(summaries.length).toBe(1);
  });

  it('ne crée rien s\'il n\'y a aucune question en erreur', () => {
    const q = document.createElement('div');
    q.className = 'question-container';
    document.getElementById('questions')!.appendChild(q);

    createErrorSummary();

    expect(document.getElementById('dsfr-error-summary')).toBeNull();
  });

  it('les items d\'erreur ont l\'attribut data-question-id', () => {
    addErrorQuestion('question42', 'Q42', 'Erreur');

    createErrorSummary();

    const item = document.querySelector('.error-item')!;
    expect(item.getAttribute('data-question-id')).toBe('question42');
  });

  it('n\'exécute pas de HTML injecté via le libellé de question (XSS)', () => {
    // Un admin malveillant peut saisir un payload dans un libellé ; LimeSurvey
    // peut l'échapper côté serveur, mais textContent le renverrait décodé :
    // le résumé ne doit jamais le réinterpréter comme HTML.
    addErrorQuestion(
      'question1',
      '<img src=x onerror="window.__xss=1">',
      '<script>window.__xss=1</script>',
    );

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary.querySelector('img')).toBeNull();
    expect(summary.querySelector('script')).toBeNull();
    expect((window as unknown as { __xss?: number }).__xss).toBeUndefined();

    const link = summary.querySelector('a')!;
    expect(link.textContent).toContain('<img src=x onerror="window.__xss=1">');
  });

  it('échappe l\'id de question utilisé dans href et data-question-id', () => {
    // Les ids LimeSurvey sont normalement sains, mais on ne se repose pas
    // dessus : setAttribute doit empêcher une cassure d'attribut.
    const q = document.createElement('div');
    q.id = 'q"><img src=x onerror="window.__xssId=1">';
    q.className = 'question-container input-error';
    const label = document.createElement('h3');
    label.className = 'question-text';
    label.textContent = 'Libellé';
    q.appendChild(label);
    document.getElementById('questions')!.appendChild(q);

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary.querySelector('img')).toBeNull();
    expect((window as unknown as { __xssId?: number }).__xssId).toBeUndefined();
  });

  it('a les classes DSFR correctes (fr-alert, fr-alert--error)', () => {
    addErrorQuestion('question1', 'Q1', 'Erreur');

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary.classList.contains('fr-alert')).toBe(true);
    expect(summary.classList.contains('fr-alert--error')).toBe(true);
    expect(summary.classList.contains('fr-mb-4w')).toBe(true);
  });
});
