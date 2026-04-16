import { describe, it, expect } from 'vitest';

// --- Reproduire la logique de validation numérique de custom.js (line 1516) ---

function isValidNumber(value: string): boolean {
  return /^-?\d+([.,]\d*)?$/.test(value) || /^-?\d*[.,]\d+$/.test(value);
}

// --- Tests ---

describe('isValidNumber', () => {
  describe('valeurs valides', () => {
    it.each([
      ['42', 'entier positif'],
      ['0', 'zéro'],
      ['-3', 'entier négatif'],
      ['12.5', 'décimal avec point'],
      ['12,5', 'décimal avec virgule'],
      ['-3.14', 'négatif décimal point'],
      ['-3,14', 'négatif décimal virgule'],
      ['100', 'centaine'],
      ['0.5', 'décimal < 1 avec point'],
      ['0,5', 'décimal < 1 avec virgule'],
      ['.5', 'décimal sans partie entière (point)'],
      [',5', 'décimal sans partie entière (virgule)'],
      ['12.', 'entier avec point trailing'],
      ['12,', 'entier avec virgule trailing'],
    ])('"%s" → valide (%s)', (value) => {
      expect(isValidNumber(value)).toBe(true);
    });
  });

  describe('valeurs invalides', () => {
    it.each([
      ['abc', 'lettres'],
      ['12.3.4', 'double point'],
      ['12,3,4', 'double virgule'],
      ['', 'chaîne vide'],
      [' ', 'espace'],
      ['-', 'signe seul'],
      ['.', 'point seul'],
      [',', 'virgule seule'],
      ['1 2', 'espace dans le nombre'],
      ['12e5', 'notation scientifique'],
      ['1,2.3', 'mélange virgule et point'],
      ['abc123', 'lettres puis chiffres'],
      ['123abc', 'chiffres puis lettres'],
      ['--3', 'double signe'],
      ['+-3', 'signes multiples'],
    ])('"%s" → invalide (%s)', (value) => {
      expect(isValidNumber(value)).toBe(false);
    });
  });
});
