#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for GridForge via ArgoCD.
set -euo pipefail
argocd app sync -l "project=gridforge-tools" --grpc-web
