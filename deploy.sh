#!/usr/bin/env bash
# =============================================================================
# LimeSurvey DSFR Suite — Script de déploiement
# =============================================================================
set -euo pipefail

echo "==> Mise à jour du repo et des submodules..."
git pull --ff-only
git submodule update --init --recursive

echo "==> Pull des images Docker..."
docker compose pull

echo "==> Redémarrage des services..."
docker compose up -d

echo "==> Déploiement terminé."
docker compose ps
