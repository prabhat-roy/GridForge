#!/usr/bin/env bash
set -euo pipefail
NS=${NAMESPACE:-gridforge}
fail=0
for svc in $(kubectl -n "$NS" get svc -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}'); do
  port=$(kubectl -n "$NS" get svc "$svc" -o jsonpath='{.spec.ports[0].port}')
  if kubectl -n "$NS" run hc-$RANDOM --rm -i --image=curlimages/curl --restart=Never \
       --command -- curl -sf "http://$svc:$port/healthz" >/dev/null 2>&1; then
    echo "ok   $svc"
  else
    echo "FAIL $svc"
    fail=$((fail+1))
  fi
done
exit $fail
