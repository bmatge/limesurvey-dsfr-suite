# LimeSurvey DSFR Suite

Suite d'intégration DSFR (Système de Design de l'État) pour [LimeSurvey](https://www.limesurvey.org/). Environnement Docker pour le dev local et le déploiement en production — sans fork de LimeSurvey, avec l'image officielle [`martialblog/limesurvey`](https://github.com/martialblog/docker-limesurvey).

Trois modules vivent en submodules sous [`modules/`](modules/) :

| Module | Repo | Description |
|---|---|---|
| **Thème DSFR** | [`limesurvey-theme-dsfr`](https://github.com/bmatge/limesurvey-theme-dsfr) | Thème de sondage conforme au DSFR et au RGAA 4.1 |
| **Email DSFR** | [`limesurvey-email-dsfr`](https://github.com/bmatge/limesurvey-email-dsfr) | Plugin de templates d'email conformes DSFR |
| **Conversation Albert** | [`limesurvey-conversation-albert`](https://github.com/bmatge/limesurvey-conversation-albert) | Plugin d'assistant conversationnel IA |

---

## Démarrage rapide

```bash
git clone --recurse-submodules https://github.com/bmatge/limesurvey-dsfr-suite.git
cd limesurvey-dsfr-suite
docker compose -f docker-compose.dev.yml up -d
./db/seed.sh                  # charge le questionnaire de test RGAA
# → http://localhost:8081  (admin / admin)
```

Les 3 submodules sont montés en direct dans le conteneur — toute modification est visible après un refresh du navigateur, pas de rebuild Docker.

Si tu as cloné sans `--recurse-submodules` :

```bash
git submodule update --init --recursive
```

---

## Documentation

| Sujet | Où |
|---|---|
| Le thème DSFR lui-même | [`modules/theme-dsfr/README.md`](modules/theme-dsfr/README.md) |
| Options de config du thème | [`modules/theme-dsfr/THEME_OPTIONS.md`](modules/theme-dsfr/THEME_OPTIONS.md) |
| Couverture fonctionnelle du thème | [`modules/theme-dsfr/THEME_COVERAGE.md`](modules/theme-dsfr/THEME_COVERAGE.md) |
| Déclaration d'accessibilité (RGAA) | [`modules/theme-dsfr/DECLARATION_RGAA.md`](modules/theme-dsfr/DECLARATION_RGAA.md) |
| Guide développeur (Twig, esbuild, git) | [`modules/theme-dsfr/CONTRIBUTING.md`](modules/theme-dsfr/CONTRIBUTING.md) |
| **Tests** (couverture, lancement, rapports) | [`TESTING.md`](TESTING.md) |

---

## Workflow submodule

Règle d'or : on édite **toujours** depuis `modules/<nom>/`, jamais ailleurs. Chaque submodule a son propre remote et sa propre branche active.

```bash
# 1. Éditer + commit dans le submodule
cd modules/theme-dsfr
git add -A && git commit -m "feat: ..."
git push                    # → repo du submodule

# 2. Remonter le pointeur dans le parent
cd ../..
git add modules/theme-dsfr
git commit -m "chore: bump theme-dsfr"
git push
```

Pour tirer les dernières versions des 3 submodules :

```bash
git submodule update --remote --merge
```

---

## Arrêt / nettoyage

```bash
docker compose -f docker-compose.dev.yml down       # arrêter (conserve les données)
docker compose -f docker-compose.dev.yml down -v    # arrêter + purger les volumes
```

---

## Déploiement en production

```bash
git clone --recurse-submodules https://github.com/bmatge/limesurvey-dsfr-suite.git
cd limesurvey-dsfr-suite
cp .env.example .env        # adapter les valeurs pour la prod
./deploy.sh                 # pull repo + submodules + images Docker, restart
```

Le réseau `ecosystem-network` doit exister (créé par la stack Traefik). Les labels Traefik dans [`docker-compose.yml`](docker-compose.yml) sont à adapter au domaine cible.

---

## Licence

Chaque submodule a sa propre licence — voir les repos respectifs. Ce repo d'orchestration est sous [Licence Ouverte v2.0 (Etalab)](https://www.etalab.gouv.fr/licence-ouverte-open-licence/).
