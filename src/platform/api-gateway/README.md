# api-gateway

HTTP+gRPC ingress, mTLS, NERC CIP auth, rate limiting

Domain: ``platform`` Â· Language: go Â· Port: 50000

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/api-gateway.proto](../../../proto/platform/api-gateway.proto) â€” gRPC contract
- [helm/charts/api-gateway/](../../../helm/charts/api-gateway/) â€” Helm chart
- [../README.md](../README.md) â€” domain overview
