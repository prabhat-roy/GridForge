#!/usr/bin/env bash
set -euo pipefail
NS="${1:-gridforge}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "gridforge-$TS" --include-namespaces "$NS" --wait
