import { describe, it, expect, beforeEach, afterEach } from 'vitest';
import { enableImageLazyLoading, extractRealImageSrc } from '../../modules/theme-dsfr/src/a11y/lazy-images.js';

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

  it("extrait l'URL d'un src qui contient un <img> HTML (cas imageselect)", () => {
    const html = '<img alt="Illustration dette" src="https://example.gouv.fr/a.png" />';
    document.body.innerHTML = `<div class="answer-item"><img src='${html}' alt="Image de réponse"></div>`;
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    expect(img.getAttribute('src')).toBe('https://example.gouv.fr/a.png');
    expect(img.getAttribute('alt')).toBe('Illustration dette');
  });

  it("extrait src + alt + style depuis un <img> HTML avec style (TinyMCE)", () => {
    const html = '<img alt="Dette publique" src="https://example.gouv.fr/dette.png" style="width: 99px; height: 56px;" />';
    document.body.innerHTML = `<div class="answer-item"><img src='${html}' alt="Image de réponse"></div>`;
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    expect(img.getAttribute('src')).toBe('https://example.gouv.fr/dette.png');
    expect(img.getAttribute('alt')).toBe('Dette publique');
    const style = img.getAttribute('style') || '';
    expect(style).toContain('width: 99px');
    expect(style).toContain('height: 56px');
  });

  it("filtre les propriétés CSS non-whitelistées dans le style", () => {
    const html = '<img src="https://example.gouv.fr/x.png" style="width: 100px; background: url(evil) ; position: absolute; height: 50px;">';
    document.body.innerHTML = `<div class="answer-item"><img src='${html}'></div>`;
    enableImageLazyLoading();
    const style = document.querySelector('img')!.getAttribute('style') || '';
    expect(style).toContain('width: 100px');
    expect(style).toContain('height: 50px');
    expect(style).not.toContain('background');
    expect(style).not.toContain('position');
    expect(style).not.toContain('url(');
  });

  it('extrait aussi depuis un src HTML-encodé (&lt;img...&gt;)', () => {
    const html = '&lt;img src=&quot;https://example.gouv.fr/b.png&quot; alt=&quot;B&quot; /&gt;';
    document.body.innerHTML = `<div class="answer-item"><img src="${html}" alt="Image de réponse"></div>`;
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    expect(img.getAttribute('src')).toBe('https://example.gouv.fr/b.png');
  });

  it("rejette les URLs non http(s) (sécurité)", () => {
    const html = '<img src="javascript:alert(1)" />';
    document.body.innerHTML = `<div class="answer-item"><img src='${html}'></div>`;
    enableImageLazyLoading();
    const img = document.querySelector('img')!;
    // src inchangé : la règle SAFE_URL_RE rejette javascript:
    expect(img.getAttribute('src')).toContain('<img');
  });

  it("n'exécute pas de script lors du parsing HTML-in-src", () => {
    const html = '<script>window.__xssFromLazyImages=1</script><img src="https://example.gouv.fr/c.png">';
    document.body.innerHTML = `<div class="answer-item"><img src='${html}'></div>`;
    enableImageLazyLoading();
    expect((window as any).__xssFromLazyImages).toBeUndefined();
    const img = document.querySelector('img')!;
    expect(img.getAttribute('src')).toBe('https://example.gouv.fr/c.png');
    delete (window as any).__xssFromLazyImages;
  });

  it("laisse intact un src normal (non-HTML)", () => {
    document.body.innerHTML = '<div class="answer-item"><img src="https://example.gouv.fr/ok.png"></div>';
    enableImageLazyLoading();
    expect(document.querySelector('img')!.getAttribute('src')).toBe('https://example.gouv.fr/ok.png');
  });

  it('extractRealImageSrc renvoie null pour une entrée non-HTML', () => {
    expect(extractRealImageSrc('https://example.com/foo.png')).toBeNull();
    expect(extractRealImageSrc('')).toBeNull();
    expect(extractRealImageSrc(null as unknown as string)).toBeNull();
  });

  it('extractRealImageSrc renvoie null si pas d\'<img> dans le HTML', () => {
    expect(extractRealImageSrc('<div>no img</div>')).toBeNull();
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
