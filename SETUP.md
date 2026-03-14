# Initialisation du repo (à faire une seule fois)

Ce fichier décrit les étapes pour initialiser correctement le repo avec les submodules.
Il peut être supprimé une fois l'initialisation faite.

## 1. Créer le repo GitHub

```bash
cd limesurvey-dsfr-suite
gh repo create bmatge/limesurvey-dsfr-suite --public --source=. --push
```

## 2. Ajouter les submodules (remplace le .gitmodules pré-configuré)

```bash
# Supprimer le .gitmodules pré-rempli et le .gitkeep
rm .gitmodules modules/.gitkeep

# Ajouter les vrais submodules
git submodule add https://github.com/bmatge/limesurvey-theme-dsfr.git modules/theme-dsfr
git submodule add https://github.com/bmatge/limesurvey-email-dsfr.git modules/email-dsfr
git submodule add https://github.com/bmatge/limesurvey-conversation-albert.git modules/conversation-albert

git add -A
git commit -m "feat: ajout des submodules (thème + 2 plugins)"
git push
```

## 3. Vérifier que les noms des repos GitHub sont corrects

Le `.gitmodules` pré-rempli suppose que les repos plugins s'appellent :
- `bmatge/limesurvey-email-dsfr`
- `bmatge/limesurvey-conversation-albert`

Si les noms réels sont différents, adapter les URLs avant d'exécuter `git submodule add`.

## 4. Tester en local

```bash
docker compose -f docker-compose.dev.yml up -d
# → http://localhost:8080
```

## 5. Supprimer ce fichier

```bash
rm SETUP.md
git add -A && git commit -m "chore: suppression du guide d'initialisation"
```
