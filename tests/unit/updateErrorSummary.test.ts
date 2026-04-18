import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { createErrorSummary, updateErrorSummary } from '../../modules/theme-dsfr/src/validation/error-summary.js';

// --- Helpers ---

/**
 * Construit un résumé pré-existant (comme si `createErrorSummary` avait déjà
 * été appelé après une soumission en échec). On n'utilise PAS createErrorSummary
 * ici parce qu'on veut contrôler exactement les ids listés, indépendamment
 * des questions présentes dans le DOM au moment du montage.
 */
function buildSummary(errorItems: { questionId: string; label?: string }[]): void {
  const summary = document.createElement('div');
  summary.id = 'dsfr-error-summary';
  summary.className = 'fr-alert fr-alert--error fr-mb-4w';

  const title = document.createElement('h3');
  title.className = 'fr-alert__title';
  title.textContent = errorItems.length === 1
    ? 'Une erreur à corriger'
    : `${errorItems.length} erreurs à corriger`;
  summary.appendChild(title);

  const description = document.createElement('p');
  description.className = 'dsfr-error-summary-desc';
  description.textContent = 'Veuillez corriger les erreurs suivantes :';
  summary.appendChild(description);

  const list = document.createElement('ul');
  errorItems.forEach((item) => {
    const li = document.createElement('li');
    li.className = 'error-item';
    li.setAttribute('data-question-id', item.questionId);

    const a = document.createElement('a');
    a.setAttribute('href', '#' + item.questionId);
    a.className = 'fr-link fr-icon-error-warning-line fr-link--icon-left';
    a.textContent = item.label || 'Erreur';
    li.appendChild(a);

    list.appendChild(li);
  });
  summary.appendChild(list);
  document.body.appendChild(summary);
}

/** Pose une question avec les classes voulues. */
function addQuestion(id: string, opts: { isError?: boolean; isValid?: boolean; value?: string }): void {
  const q = document.createElement('div');
  q.id = id;
  q.className = 'question-container';
  if (opts.isError) q.classList.add('input-error');
  if (opts.isValid) q.classList.add('input-valid');

  const input = document.createElement('input');
  input.type = 'text';
  input.className = 'fr-input';
  if (opts.value !== undefined) input.value = opts.value;
  q.appendChild(input);

  document.body.appendChild(q);
}

// --- Tests ---

describe('updateErrorSummary', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
    vi.useFakeTimers();
  });

  afterEach(() => {
    document.body.innerHTML = '';
    vi.useRealTimers();
  });

  it('ne fait rien si le résumé n\'existe pas', () => {
    expect(() => updateErrorSummary()).not.toThrow();
  });

  it('retire de la liste une question qui n\'a plus la classe input-error', () => {
    addQuestion('q1', { isValid: true, value: 'Test' }); // input-error retiré
    addQuestion('q2', { isError: true }); // toujours en erreur
    buildSummary([
      { questionId: 'q1', label: 'Q1' },
      { questionId: 'q2', label: 'Q2' },
    ]);

    updateErrorSummary();

    const remaining = document.querySelectorAll('.error-item');
    expect(remaining.length).toBe(1);
    expect(remaining[0].getAttribute('data-question-id')).toBe('q2');
  });

  it('garde en liste une question dont input-error est toujours présent', () => {
    addQuestion('q1', { isError: true, value: 'un peu rempli' });
    buildSummary([{ questionId: 'q1', label: 'Q1' }]);

    updateErrorSummary();

    // La question a toujours input-error → pas retirée, même si l'input a une valeur
    const items = document.querySelectorAll('.error-item');
    expect(items.length).toBe(1);
  });

  it('met à jour le titre avec le décompte des erreurs restantes', () => {
    addQuestion('q1', { isValid: true });
    addQuestion('q2', { isError: true });
    addQuestion('q3', { isError: true });
    buildSummary([
      { questionId: 'q1' },
      { questionId: 'q2' },
      { questionId: 'q3' },
    ]);

    updateErrorSummary();

    const title = document.querySelector('.fr-alert__title')!;
    expect(title.textContent).toBe('2 erreurs à corriger');
  });

  it('passe en SUCCESS quand toutes les erreurs sont corrigées', () => {
    addQuestion('q1', { isValid: true });
    addQuestion('q2', { isValid: true });
    buildSummary([{ questionId: 'q1' }, { questionId: 'q2' }]);

    updateErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary.classList.contains('fr-alert--success')).toBe(true);
    expect(summary.classList.contains('fr-alert--error')).toBe(false);
    expect(summary.querySelector('.fr-alert__title')!.textContent).toBe(
      'Toutes les erreurs ont été corrigées',
    );
  });

  it('affiche "Une erreur à corriger" au singulier', () => {
    addQuestion('q1', { isValid: true });
    addQuestion('q2', { isError: true });
    buildSummary([{ questionId: 'q1' }, { questionId: 'q2' }]);

    updateErrorSummary();

    expect(document.querySelector('.fr-alert__title')!.textContent).toBe(
      'Une erreur à corriger',
    );
  });

  it('annonce la correction via la région role="status" (aria-live polite)', () => {
    addQuestion('q1', { isValid: true });
    addQuestion('q2', { isError: true });
    buildSummary([
      { questionId: 'q1', label: 'Votre nom : Ce champ est obligatoire' },
      { questionId: 'q2', label: 'Votre email : Format invalide' },
    ]);

    updateErrorSummary();

    // Le message est posé via un setTimeout(30) pour forcer la ré-annonce
    vi.advanceTimersByTime(50);

    const status = document.getElementById('dsfr-error-status')!;
    expect(status).not.toBeNull();
    expect(status.getAttribute('role')).toBe('status');
    expect(status.getAttribute('aria-live')).toBe('polite');
    expect(status.textContent).toContain('Votre nom');
    expect(status.textContent).toContain('Il reste 1 erreur');
  });

  it('annonce "toutes corrigées" quand il n\'en reste plus', () => {
    addQuestion('q1', { isValid: true });
    buildSummary([{ questionId: 'q1', label: 'Unique : champ obligatoire' }]);

    updateErrorSummary();
    vi.advanceTimersByTime(50);

    const status = document.getElementById('dsfr-error-status')!;
    expect(status.textContent).toContain('Toutes les erreurs ont été corrigées');
  });

  it('reste en ERROR tant qu\'au moins une erreur n\'est pas corrigée', () => {
    addQuestion('q1', { isError: true });
    addQuestion('q2', { isError: true });
    buildSummary([{ questionId: 'q1' }, { questionId: 'q2' }]);

    updateErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    expect(summary.classList.contains('fr-alert--error')).toBe(true);
  });

  it('idempotence : 2 appels consécutifs n\'altèrent pas l\'état final', () => {
    addQuestion('q1', { isValid: true });
    addQuestion('q2', { isError: true });
    buildSummary([{ questionId: 'q1' }, { questionId: 'q2' }]);

    updateErrorSummary();
    updateErrorSummary();

    const items = document.querySelectorAll('.error-item');
    expect(items.length).toBe(1);
    expect(items[0].getAttribute('data-question-id')).toBe('q2');
  });

  it('createErrorSummary retire le résumé et crée simultanément la région status', () => {
    const q = document.createElement('div');
    q.id = 'q1';
    q.className = 'question-container input-error';
    const label = document.createElement('h3');
    label.className = 'question-text';
    label.textContent = 'Libellé';
    q.appendChild(label);
    document.body.appendChild(q);

    createErrorSummary();

    const summary = document.getElementById('dsfr-error-summary')!;
    const status = document.getElementById('dsfr-error-status')!;
    expect(summary).not.toBeNull();
    expect(status).not.toBeNull();
    expect(status.getAttribute('role')).toBe('status');
  });
});
