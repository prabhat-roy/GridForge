# bess-service

Service in the battery domain of GridForge.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bess-service/](../../../helm/charts/bess-service/) â€” Helm chart
- [manifests/battery/bess-service/](../../../manifests/battery/bess-service/) â€” Raw K8s manifests
