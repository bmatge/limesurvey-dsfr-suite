import { describe, it, expect } from 'vitest';
import { extractQuestionCodes } from '../../modules/theme-dsfr/src/a11y/conditional-aria.js';

// --- Tests ---

describe('extractQuestionCodes', () => {
  describe('expressions valides', () => {
    it('extrait un code simple (Q1)', () => {
      expect(extractQuestionCodes('Q1.NAOK == "Y"')).toEqual(['Q1']);
    });

    it('extrait un code avec sous-question (Q2_SQ001)', () => {
      expect(extractQuestionCodes('Q2_SQ001.NAOK == "1"')).toEqual(['Q2_SQ001']);
    });

    it('extrait plusieurs codes distincts', () => {
      expect(extractQuestionCodes('Q1.NAOK == "Y" && Q3.NAOK > 5')).toEqual(['Q1', 'Q3']);
    });

    it('extrait un mélange de codes simples et sous-questions', () => {
      expect(
        extractQuestionCodes('Q1.NAOK == "Y" && Q2_SQ001.NAOK == "1" && Q5.NAOK != ""')
      ).toEqual(['Q1', 'Q2_SQ001', 'Q5']);
    });

    it('déduplique les codes répétés', () => {
      expect(extractQuestionCodes('Q1.NAOK == "Y" || Q1.NAOK == "N"')).toEqual(['Q1']);
    });

    it('gère les grands numéros de question (Q999)', () => {
      expect(extractQuestionCodes('Q999.NAOK != ""')).toEqual(['Q999']);
    });

    it('gère les grands numéros de sous-question (Q1_SQ999)', () => {
      expect(extractQuestionCodes('Q1_SQ999.NAOK == "1"')).toEqual(['Q1_SQ999']);
    });
  });

  describe('expressions vides ou invalides', () => {
    it('retourne un tableau vide pour null', () => {
      expect(extractQuestionCodes(null)).toEqual([]);
    });

    it('retourne un tableau vide pour undefined', () => {
      expect(extractQuestionCodes(undefined)).toEqual([]);
    });

    it('retourne un tableau vide pour une chaîne vide', () => {
      expect(extractQuestionCodes('')).toEqual([]);
    });

    it('retourne un tableau vide pour une expression sans code de question', () => {
      expect(extractQuestionCodes('1 + 2 == 3')).toEqual([]);
    });

    it('ne match pas un code sans point après (Q1 seul)', () => {
      expect(extractQuestionCodes('Q1 == "Y"')).toEqual([]);
    });
  });

  describe('expressions complexes LimeSurvey', () => {
    it('gère une expression ExpressionScript typique', () => {
      expect(
        extractQuestionCodes('((Q1.NAOK == "Y") and (Q2_SQ001.NAOK == "1" or Q2_SQ002.NAOK == "1"))')
      ).toEqual(['Q1', 'Q2_SQ001', 'Q2_SQ002']);
    });

    it('est insensible à la casse (Q1 vs q1)', () => {
      // Le regex a le flag 'gi' donc Q1 et q1 matchent tous les deux
      expect(extractQuestionCodes('q1.NAOK == "Y"')).toEqual(['q1']);
    });
  });
});
