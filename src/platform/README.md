# platform — GridForge

Services in the **platform** domain.

| Service | Language | Port | Description |
|---|---|---|---|
| api-gateway | go | 50000 | HTTP+gRPC ingress, mTLS, NERC CIP auth, rate limiting |
| ops-bff | go | 50001 | BFF for grid-ops dashboard (React) |
| customer-bff | go | 50002 | BFF for customer portal (Next.js) |
| trader-bff | go | 50003 | BFF for energy trader portal (Angular) |
| graphql-gateway | go | 50004 | Federated GraphQL across services |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/platform/](../../proto/platform/) for the gRPC contracts.
