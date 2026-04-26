# ocpp-gateway

Service in the **ev-charging** domain of GridForge.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ocpp-gateway/](../../../helm/charts/ocpp-gateway/) — Helm chart
- [manifests/ev-charging/ocpp-gateway/](../../../manifests/ev-charging/ocpp-gateway/) — Raw K8s manifests
