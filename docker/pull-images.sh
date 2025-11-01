#!/usr/bin/env bash
set -euo pipefail
images=(
	caddy:2
	n8nio/n8n:latest
	postgres:15
	vllm/vllm:latest
	qdrant/qdrant:latest
	ghcr.io/m-bain/whisperx:latest
	ghcr.io/guillaumekln/faster-whisper:latest
	ghcr.io/your-org/florence2-server:latest
	comfyanonymous/comfyui:latest
	automatic1111/stable-diffusion-webui:latest
	redis:7
	prom/prometheus:latest
	grafana/grafana:9.5.2
	grafana/loki:2.8.2
	grafana/promtail:2.8.2
	glitchtip/glitchtip:latest
	qdrant/qdrant:latest
)
for img in "${images[@]}"; do
	docker pull "$img" || true
done