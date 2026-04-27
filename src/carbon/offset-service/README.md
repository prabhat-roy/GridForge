# offset-service

Service in the carbon domain of GridForge.

Language: Go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/offset-service/](../../../helm/charts/offset-service/) â€” Helm chart
- [manifests/carbon/offset-service/](../../../manifests/carbon/offset-service/) â€” Raw K8s manifests
