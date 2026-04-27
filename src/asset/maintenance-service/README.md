# maintenance-service

Service in the asset domain of GridForge.

Language: Go Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-service/](../../../helm/charts/maintenance-service/) â€” Helm chart
- [manifests/asset/maintenance-service/](../../../manifests/asset/maintenance-service/) â€” Raw K8s manifests
