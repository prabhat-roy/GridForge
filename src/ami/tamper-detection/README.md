# tamper-detection

Service in the ami domain of GridForge.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tamper-detection/](../../../helm/charts/tamper-detection/) â€” Helm chart
- [manifests/ami/tamper-detection/](../../../manifests/ami/tamper-detection/) â€” Raw K8s manifests
