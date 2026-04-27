# dispatch-service

Service in the generation domain of GridForge.

Language: Go Â· Port: 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dispatch-service/](../../../helm/charts/dispatch-service/) â€” Helm chart
- [manifests/generation/dispatch-service/](../../../manifests/generation/dispatch-service/) â€” Raw K8s manifests
