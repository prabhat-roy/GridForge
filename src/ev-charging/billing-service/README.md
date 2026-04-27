# billing-service

Service in the ev-charging domain of GridForge.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/billing-service/](../../../helm/charts/billing-service/) â€” Helm chart
- [manifests/ev-charging/billing-service/](../../../manifests/ev-charging/billing-service/) â€” Raw K8s manifests
