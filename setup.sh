#!/usr/bin/env bash
set -euo pipefail


# setup.sh - prepare dirs, pull images, start stack
ROOT=$(pwd)
echo "Setting up JedAI v3 at ${ROOT}"


# Create required directories
mkdir -p videos models qdrant_storage audio transcripts n8n postgres_data comfui_models comfui_output sd_models sd_outputs glustermount glitchtip_data prometheus grafana loki promtail fastapi


# Ensure perms
chown -R $(id -u):$(id -g) videos models
chmod 770 videos


# Pull images
./docker/pull-images.sh


# Start compose
docker compose pull || true
docker compose up -d


echo "Stack started. Import n8n workflows from n8n-workflows/ if desired."