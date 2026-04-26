#!/usr/bin/env bash
set -euo pipefail
PG_DSN=${PG_DSN:-postgres://gridforge:${PG_PASSWORD}@localhost:5432/gridforge}
for schema_dir in databases/postgres/*/; do
  schema=$(basename "$schema_dir")
  flyway \
    -url="jdbc:${PG_DSN#postgres://}" \
    -locations=filesystem:"$schema_dir" \
    -baselineOnMigrate=true \
    -schemas="$schema" \
    migrate
done
