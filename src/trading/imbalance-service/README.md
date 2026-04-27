# imbalance-service

Service in the trading domain of GridForge.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/imbalance-service/](../../../helm/charts/imbalance-service/) â€” Helm chart
- [manifests/trading/imbalance-service/](../../../manifests/trading/imbalance-service/) â€” Raw K8s manifests
