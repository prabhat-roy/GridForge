# solar-service

Service in the renewable domain of GridForge.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/solar-service/](../../../helm/charts/solar-service/) â€” Helm chart
- [manifests/renewable/solar-service/](../../../manifests/renewable/solar-service/) â€” Raw K8s manifests
