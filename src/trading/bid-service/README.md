# bid-service

Service in the trading domain of GridForge.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bid-service/](../../../helm/charts/bid-service/) â€” Helm chart
- [manifests/trading/bid-service/](../../../manifests/trading/bid-service/) â€” Raw K8s manifests
