# soc-service

Service in the battery domain of GridForge.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/soc-service/](../../../helm/charts/soc-service/) â€” Helm chart
- [manifests/battery/soc-service/](../../../manifests/battery/soc-service/) â€” Raw K8s manifests
