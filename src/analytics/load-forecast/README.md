# load-forecast

Service in the analytics domain of GridForge.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/load-forecast/](../../../helm/charts/load-forecast/) â€” Helm chart
- [manifests/analytics/load-forecast/](../../../manifests/analytics/load-forecast/) â€” Raw K8s manifests
