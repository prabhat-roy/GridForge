# settlement-service

Service in the trading domain of GridForge.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/settlement-service/](../../../helm/charts/settlement-service/) â€” Helm chart
- [manifests/trading/settlement-service/](../../../manifests/trading/settlement-service/) â€” Raw K8s manifests
