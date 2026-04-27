# meter-service

Service in the ami domain of GridForge.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/meter-service/](../../../helm/charts/meter-service/) â€” Helm chart
- [manifests/ami/meter-service/](../../../manifests/ami/meter-service/) â€” Raw K8s manifests
