# account-service

Service in the customer domain of GridForge.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/account-service/](../../../helm/charts/account-service/) â€” Helm chart
- [manifests/customer/account-service/](../../../manifests/customer/account-service/) â€” Raw K8s manifests
