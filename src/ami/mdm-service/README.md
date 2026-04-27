# mdm-service

Service in the ami domain of GridForge.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mdm-service/](../../../helm/charts/mdm-service/) â€” Helm chart
- [manifests/ami/mdm-service/](../../../manifests/ami/mdm-service/) â€” Raw K8s manifests
