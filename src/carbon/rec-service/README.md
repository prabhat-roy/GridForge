# rec-service

Service in the carbon domain of GridForge.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rec-service/](../../../helm/charts/rec-service/) â€” Helm chart
- [manifests/carbon/rec-service/](../../../manifests/carbon/rec-service/) â€” Raw K8s manifests
