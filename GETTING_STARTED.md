# Getting Started

> Quickstart for developers joining this project. For the full architecture, read
> [README.md](README.md).

---

## Prerequisites

- Docker 24+ and Docker Compose v2
- Make
- Git
- A POSIX shell (bash / zsh)

Language toolchains (install only what you need for the services you'll touch):

| Language | Version | Install |
|---|---|---|
| Go | 1.24+ | <https://go.dev/dl/> |
| Java | 21 | <https://adoptium.net/> |
| Kotlin | 2.x | bundled with Gradle |
| Python | 3.12+ | <https://www.python.org/> |
| Rust | 1.80+ | <https://rustup.rs/> |
| Scala | 2.13 / 3.x | <https://www.scala-lang.org/download/> |
| C++ | 20 (gcc/clang) | platform-specific |

Optional but recommended:

- `kind` or `minikube` (local Kubernetes)
- `helm` v3
- `buf` (proto codegen)
- `kubectl` v1.30+

---

## First-time setup

```bash
# 1. Clone and enter the project
git clone <git-url>
cd GridForge

# 2. Copy the env template
cp .env.example .env

# 3. Install local dev tooling
make bootstrap

# 4. Start the local stack (Postgres, TimescaleDB, InfluxDB, Cassandra, Kafka, MQTT, ...)
make compose-up

# 5. Verify services are healthy
docker compose ps
```

---

## Running tests

```bash
make test         # all tests across all services
make lint         # lint everything
make fmt          # format everything
```

---

## Working on a service

Each service lives under `src/<domain>/<service>/` and has its own `Makefile`.

```bash
cd src/<domain>/<service>
make run          # start the service against the local stack
make test         # service-local tests
```

---

## Generating proto bindings

```bash
make proto        # regenerates all gRPC bindings from proto/
```

---

## Deploying to local Kubernetes

```bash
kind create cluster --name local
make deploy-local
kubectl port-forward svc/api-gateway 8080:80
```

---

## IT vs OT clusters

GridForge is split between an IT cluster (cloud) and an OT cluster (on-prem,
air-gapped). For local development the OT-side services run as part of the same
docker-compose stack, but in production the OT cluster lives in `ot/` overlays
managed by Flux CD with manual change-control gates (NERC CIP-007).

---

## Where things live

| You want… | Look in… |
|---|---|
| Project overview | [README.md](README.md) |
| Service code | `src/<domain>/<service>/` |
| gRPC schemas | `proto/` |
| Kafka event schemas | `events/` |
| Helm charts | `helm/charts/` |
| Terraform | `infra/` |
| CI pipelines | `ci/` |
| GitOps configs | `gitops/` |
| Observability configs | `observability/` |
| Architecture decisions | `docs/adr/` |
| Operational runbooks | `docs/runbooks/` |

---

## Help

- ADRs in `docs/adr/` capture major architectural decisions
- Service-level questions: see the README inside the service directory
- Anything missing: open a PR with the change you'd like
