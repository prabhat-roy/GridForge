# settlement-gateway

Service in the market domain of GridForge.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/settlement-gateway/](../../../helm/charts/settlement-gateway/) â€” Helm chart
- [manifests/market/settlement-gateway/](../../../manifests/market/settlement-gateway/) â€” Raw K8s manifests
