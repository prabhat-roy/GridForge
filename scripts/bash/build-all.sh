#!/usr/bin/env bash
# Build every service container, optionally filtered by language.
set -euo pipefail
LANG_FILTER="${1:-}"
REGISTRY=${REGISTRY:-harbor.gridforge.internal}
TAG=${TAG:-latest}

jq_filter='.[]'
[ -n "$LANG_FILTER" ] && jq_filter=".[] | select(.L==\"$LANG_FILTER\")"

while IFS= read -r row; do
  domain=$(echo "$row" | jq -r '.D')
  name=$(echo "$row" | jq -r '.N')
  ( cd "src/$domain/$name" && docker build -t "$REGISTRY/gridforge/$name:$TAG" . )
done < <(jq -c "$jq_filter" .services.json)
