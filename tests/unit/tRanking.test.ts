import { describe, it, expect, beforeEach } from 'vitest';

// --- Reproduire la logique de tRanking depuis custom.js (lines 3020-3058) ---

const RANKING_I18N_FR: Record<string, string> = {
  ranking_actions_for: 'Actions pour %s',
  ranking_add: 'Ajouter au classement',
  ranking_add_aria: 'Ajouter %s au classement',
  ranking_up: 'Monter',
  ranking_up_aria: 'Monter %s',
  ranking_down: 'Descendre',
  ranking_down_aria: 'Descendre %s',
  ranking_remove: 'Retirer',
  ranking_remove_aria: 'Retirer %s du classement',
};

const RANKING_I18N_EN: Record<string, string> = {
  ranking_actions_for: 'Actions for %s',
  ranking_add: 'Add to ranking',
  ranking_add_aria: 'Add %s to ranking',
  ranking_up: 'Move up',
  ranking_up_aria: 'Move %s up',
  ranking_down: 'Move down',
  ranking_down_aria: 'Move %s down',
  ranking_remove: 'Remove',
  ranking_remove_aria: 'Remove %s from ranking',
};

function tRanking(key: string, label?: string): string {
  const lang = (document.documentElement.lang || 'fr').toLowerCase().substring(0, 2);
  const dict = lang === 'en' ? RANKING_I18N_EN : RANKING_I18N_FR;
  let str = dict[key] || RANKING_I18N_FR[key] || key;
  if (typeof label !== 'undefined') {
    str = str.replace('%s', label);
  }
  return str;
}

// --- Tests ---

describe('tRanking', () => {
  beforeEach(() => {
    document.documentElement.lang = 'fr';
  });

  describe('FR', () => {
    it('retourne le label sans interpolation', () => {
      expect(tRanking('ranking_add')).toBe('Ajouter au classement');
    });

    it('interpole le %s avec le label', () => {
      expect(tRanking('ranking_add_aria', 'Option A')).toBe(
        'Ajouter Option A au classement'
      );
    });

    it('interpole pour monter/descendre/retirer', () => {
      expect(tRanking('ranking_up_aria', 'Item 1')).toBe('Monter Item 1');
      expect(tRanking('ranking_down_aria', 'Item 2')).toBe('Descendre Item 2');
      expect(tRanking('ranking_remove_aria', 'Item 3')).toBe(
        'Retirer Item 3 du classement'
      );
    });
  });

  describe('EN', () => {
    beforeEach(() => {
      document.documentElement.lang = 'en';
    });

    it('retourne en anglais', () => {
      expect(tRanking('ranking_add')).toBe('Add to ranking');
    });

    it('interpole en anglais', () => {
      expect(tRanking('ranking_up_aria', 'Choice B')).toBe('Move Choice B up');
    });
  });

  describe('fallback', () => {
    it('retourne la clé si inconnue', () => {
      expect(tRanking('nonexistent_key')).toBe('nonexistent_key');
    });

    it('sans label, le %s reste dans la chaîne', () => {
      expect(tRanking('ranking_add_aria')).toBe('Ajouter %s au classement');
    });
  });
});
