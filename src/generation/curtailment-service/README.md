# curtailment-service

Service in the generation domain of GridForge.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/curtailment-service/](../../../helm/charts/curtailment-service/) â€” Helm chart
- [manifests/generation/curtailment-service/](../../../manifests/generation/curtailment-service/) â€” Raw K8s manifests
