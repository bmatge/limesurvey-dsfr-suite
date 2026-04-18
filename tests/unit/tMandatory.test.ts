import { describe, it, expect, beforeEach } from 'vitest';
import { tMandatory } from '../../modules/theme-dsfr/src/core/i18n.js';

describe('tMandatory', () => {
  beforeEach(() => {
    document.documentElement.lang = 'fr';
  });

  describe('FR', () => {
    it('retourne le message pluriel avec interpolation', () => {
      expect(tMandatory('fields_remaining_plural', 3, 5)).toBe(
        'Veuillez compléter les 3 champs restants sur 5.'
      );
    });

    it('retourne le message singulier', () => {
      expect(tMandatory('fields_remaining_singular')).toBe(
        'Veuillez compléter le dernier champ.'
      );
    });

    it('retourne le message tous requis avec total', () => {
      expect(tMandatory('fields_all_required', undefined, 8)).toBe(
        'Veuillez compléter tous les champs (8 champs requis).'
      );
    });

    it('retourne field_valid', () => {
      expect(tMandatory('field_valid')).toBe('Saisie valide');
    });

    it('retourne numeric_only', () => {
      expect(tMandatory('numeric_only')).toBe(
        "Ce champ n'accepte que des valeurs numériques."
      );
    });
  });

  describe('EN', () => {
    beforeEach(() => {
      document.documentElement.lang = 'en';
    });

    it('retourne le message pluriel en anglais', () => {
      expect(tMandatory('fields_remaining_plural', 2, 10)).toBe(
        'Please complete the remaining 2 of 10 fields.'
      );
    });

    it('retourne field_valid en anglais', () => {
      expect(tMandatory('field_valid')).toBe('Valid input');
    });
  });

  describe('fallback', () => {
    it('retourne la clé si inconnue', () => {
      expect(tMandatory('unknown_key')).toBe('unknown_key');
    });

    it('fallback vers FR si langue inconnue', () => {
      document.documentElement.lang = 'de';
      expect(tMandatory('field_valid')).toBe('Saisie valide');
    });

    it('fallback vers FR si lang vide', () => {
      document.documentElement.lang = '';
      expect(tMandatory('field_valid')).toBe('Saisie valide');
    });
  });
});
