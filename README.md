# LimeSurvey DSFR Suite

Suite d'intégration DSFR (Système de Design de l'État) pour [LimeSurvey](https://www.limesurvey.org/), composée de 3 modules :

| Module | Repo | Description |
|--------|------|-------------|
| Thème DSFR | [limesurvey-theme-dsfr](https://github.com/bmatge/limesurvey-theme-dsfr) | Thème de sondage conforme au DSFR |
| Email DSFR | [limesurvey-email-dsfr](https://github.com/bmatge/limesurvey-email-dsfr) | Plugin de templates d'email conformes DSFR |
| Conversation Albert | [limesurvey-conversation-albert](https://github.com/bmatge/limesurvey-conversation-albert) | Plugin d'assistant conversationnel IA |

Ce repo fournit l'environnement Docker pour le **développement local** et le **déploiement en production**, sans fork de LimeSurvey. Il utilise l'image officielle [`martialblog/limesurvey`](https://github.com/martialblog/docker-limesurvey).

---

## Développement local

### Prérequis

- Docker et Docker Compose
- Git

### Installation

Cloner les repos au même niveau :

```bash
cd ~/GitHub  # ou votre dossier de travail

# Ce repo
git clone https://github.com/bmatge/limesurvey-dsfr-suite.git

# Les 3 modules (repos frères)
git clone https://github.com/bmatge/limesurvey-theme-dsfr.git
git clone https://github.com/bmatge/limesurvey-email-dsfr.git
git clone https://github.com/bmatge/limesurvey-conversation-albert.git
```

Structure attendue :

```
~/GitHub/
├── limesurvey-dsfr-suite/            ← ce repo
├── limesurvey-theme-dsfr/            ← thème DSFR
├── limesurvey-email-dsfr/            ← plugin email
└── limesurvey-conversation-albert/   ← plugin IA
```

### Démarrage

```bash
cd limesurvey-dsfr-suite
docker compose -f docker-compose.dev.yml up -d
```

LimeSurvey est accessible sur **http://localhost:8080** (identifiants : `admin` / `admin`).

### Workflow de développement

Les fichiers du thème et des plugins sont montés en direct depuis vos repos locaux. Toute modification est visible immédiatement après un rafraîchissement du navigateur.

```bash
# Éditer un fichier du thème
code ../limesurvey-theme-dsfr/css/theme.css

# Rafraîchir le navigateur → changement visible
```

### Arrêt

```bash
docker compose -f docker-compose.dev.yml down        # arrêter (conserve les données)
docker compose -f docker-compose.dev.yml down -v      # arrêter + supprimer les données
```

---

## Déploiement en production

### Installation

```bash
git clone --recurse-submodules https://github.com/bmatge/limesurvey-dsfr-suite.git
cd limesurvey-dsfr-suite
cp .env.example .env
# Éditer .env avec vos valeurs de production
```

### Déploiement

```bash
./deploy.sh
```

Le script met à jour le repo, les submodules, pull les images Docker et relance les services.

### Configuration

- Adapter les labels Traefik dans `docker-compose.yml` à votre domaine
- Configurer le `.env` avec les mots de passe et l'URL publique
- Le réseau `ecosystem-network` doit exister (créé par votre stack Traefik)

---

## Architecture

```
                        ┌─────────────────────────┐
                        │   Image Docker           │
                        │   martialblog/limesurvey │
                        │   (pas de fork)          │
                        └──────────┬──────────────┘
                                   │
               ┌───────────────────┼───────────────────┐
               │                   │                    │
    ┌──────────▼──────┐  ┌────────▼────────┐  ┌───────▼────────────┐
    │  theme-dsfr     │  │  email-dsfr     │  │  conversation-     │
    │  → /themes/     │  │  → /plugins/    │  │  albert            │
    │    survey/dsfr  │  │    DSFRMail     │  │  → /plugins/       │
    │                 │  │                 │  │    ConversationIA   │
    └─────────────────┘  └─────────────────┘  └────────────────────┘
         volume               volume                volume
```

- **Dev local** : les volumes pointent vers les repos frères (`../limesurvey-theme-dsfr/`, etc.)
- **Production** : les volumes pointent vers les submodules (`./modules/theme-dsfr/`, etc.)

---

## Licence

Chaque module a sa propre licence. Voir les repos respectifs.
