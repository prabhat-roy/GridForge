# inspection-service

Service in the asset domain of GridForge.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) â€” Helm chart
- [manifests/asset/inspection-service/](../../../manifests/asset/inspection-service/) â€” Raw K8s manifests
