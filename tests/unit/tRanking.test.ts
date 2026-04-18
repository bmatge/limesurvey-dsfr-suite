import { describe, it, expect, beforeEach } from 'vitest';
import { tRanking } from '../../modules/theme-dsfr/src/core/i18n.js';

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
