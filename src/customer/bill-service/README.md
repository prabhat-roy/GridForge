# bill-service

Service in the customer domain of GridForge.

Language: Go Â· Port: 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bill-service/](../../../helm/charts/bill-service/) â€” Helm chart
- [manifests/customer/bill-service/](../../../manifests/customer/bill-service/) â€” Raw K8s manifests
