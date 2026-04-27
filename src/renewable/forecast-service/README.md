# forecast-service

Service in the renewable domain of GridForge.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/forecast-service/](../../../helm/charts/forecast-service/) â€” Helm chart
- [manifests/renewable/forecast-service/](../../../manifests/renewable/forecast-service/) â€” Raw K8s manifests
