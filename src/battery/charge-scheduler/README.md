# charge-scheduler

Service in the battery domain of GridForge.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/charge-scheduler/](../../../helm/charts/charge-scheduler/) â€” Helm chart
- [manifests/battery/charge-scheduler/](../../../manifests/battery/charge-scheduler/) â€” Raw K8s manifests
