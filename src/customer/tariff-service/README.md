# tariff-service

Service in the customer domain of GridForge.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tariff-service/](../../../helm/charts/tariff-service/) â€” Helm chart
- [manifests/customer/tariff-service/](../../../manifests/customer/tariff-service/) â€” Raw K8s manifests
