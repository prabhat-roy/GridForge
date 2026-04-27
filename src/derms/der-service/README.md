# der-service

Service in the derms domain of GridForge.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/der-service/](../../../helm/charts/der-service/) â€” Helm chart
- [manifests/derms/der-service/](../../../manifests/derms/der-service/) â€” Raw K8s manifests
