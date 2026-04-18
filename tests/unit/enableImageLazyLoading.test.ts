import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { enableImageLazyLoading } from '../../modules/theme-dsfr/src/a11y/lazy-images.js';

describe('enableImageLazyLoading', () => {
  beforeEach(() => {
    document.body.innerHTML = '';
  });

  afterEach(() => {
    document.body.innerHTML = '';
  });

  it('ajoute loading="lazy" sur les images dans .answer-item', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('loading')).toBe('lazy');
  });

  it('ajoute loading="lazy" sur les images dans .fr-fieldset__content', () => {
    document.body.innerHTML = '<div class="fr-fieldset__content"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('loading')).toBe('lazy');
  });

  it('ajoute loading="lazy" sur les images dans .answertext', () => {
    document.body.innerHTML = '<div class="answertext"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('loading')).toBe('lazy');
  });

  it('ne remplace pas un loading déjà défini', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg" loading="eager"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('loading')).toBe('eager');
  });

  it('ajoute alt="Image de réponse" si alt est absent', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('alt')).toBe('Image de réponse');
  });

  it('ajoute alt="Image de réponse" si alt est vide', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg" alt=""></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('alt')).toBe('Image de réponse');
  });

  it('utilise title comme alt si title est présent', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg" title="Mon image"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('alt')).toBe('Mon image');
  });

  it('ne remplace pas un alt déjà défini', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg" alt="Photo existante"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('alt')).toBe('Photo existante');
  });

  it('ajoute la classe dsfr-enhanced-image', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.classList.contains('dsfr-enhanced-image')).toBe(true);
  });

  it('ne duplique pas la classe dsfr-enhanced-image', () => {
    document.body.innerHTML = '<div class="answer-item"><img src="photo.jpg" class="dsfr-enhanced-image"></div>';
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    // classList should contain it exactly once
    expect(img.className).toBe('dsfr-enhanced-image');
  });

  it('ne touche pas les images en dehors des sélecteurs ciblés', () => {
    document.body.innerHTML = '<div class="some-other-container"><img src="photo.jpg"></div>';
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    expect(img.hasAttribute('loading')).toBe(false);
    expect(img.hasAttribute('alt')).toBe(false);
  });

  it('traite plusieurs images dans différents conteneurs', () => {
    document.body.innerHTML = `
      <div class="answer-item"><img src="a.jpg"></div>
      <div class="fr-checkbox-group"><img src="b.jpg" alt="Existant"></div>
      <div class="ls-question-help"><img src="c.jpg" title="Aide"></div>
    `;
    enableImageLazyLoading();

    const imgs = document.querySelectorAll('img');
    expect(imgs[0].getAttribute('loading')).toBe('lazy');
    expect(imgs[0].getAttribute('alt')).toBe('Image de réponse');
    expect(imgs[1].getAttribute('loading')).toBe('lazy');
    expect(imgs[1].getAttribute('alt')).toBe('Existant');
    expect(imgs[2].getAttribute('loading')).toBe('lazy');
    expect(imgs[2].getAttribute('alt')).toBe('Aide');
  });
});
