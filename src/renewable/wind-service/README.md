# wind-service

Service in the renewable domain of GridForge.

Language: Go Â· Port: 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wind-service/](../../../helm/charts/wind-service/) â€” Helm chart
- [manifests/renewable/wind-service/](../../../manifests/renewable/wind-service/) â€” Raw K8s manifests
