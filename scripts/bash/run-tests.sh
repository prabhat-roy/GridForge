#!/usr/bin/env bash
set -euo pipefail
fail=0
for go_dir in $(find src -name go.mod -printf '%h\n'); do ( cd "$go_dir" && go test ./... -race ) || fail=$((fail+1)); done
for pom in $(find src -name pom.xml); do ( cd "$(dirname "$pom")" && mvn -B test ) || fail=$((fail+1)); done
for req in $(find src -name requirements.txt); do ( cd "$(dirname "$req")" && python -m pytest ) || fail=$((fail+1)); done
exit $fail
