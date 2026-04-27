# reading-service

Service in the ami domain of GridForge.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/reading-service/](../../../helm/charts/reading-service/) â€” Helm chart
- [manifests/ami/reading-service/](../../../manifests/ami/reading-service/) â€” Raw K8s manifests
