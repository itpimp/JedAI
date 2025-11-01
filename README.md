# JedAI v3 — Self-hosted multimodal AI knowledge base


This repository contains a deployable, modular stack for JedAI v3. It is intended for deployment on Proxmox LXC/VMs (Dell R530 etc.) and supports CPU-only or GPU-accelerated inference.


## Quick start
1. Copy `.env.example` to `.env` and fill required values.
2. Ensure host directories exist and have correct perms: `./videos`, `./models`, `./data`.
3. Run `./setup.sh` (needs sudo) to install dependencies, pull images, and start the stack.


## Services included
- n8n (workflow engine)
- vLLM (inference)
- WhisperX (accurate ASR)
- Faster-Whisper (low-latency ASR)
- Florence-2 adapter (vision)
- Qdrant (vector database)
- GlusterFS client (media storage)
- ComfyUI & Stable Diffusion (optional image/video gen)
- FastAPI gateway + Celery workers
- Redis (task queue)
- Postgres (n8n persistence)
- Caddy (reverse proxy & TLS)
- Prometheus + Grafana + Loki + Promtail (observability)
- GlitchTip (lightweight error tracking)


See `docs/INSTALL.md` for detailed steps.