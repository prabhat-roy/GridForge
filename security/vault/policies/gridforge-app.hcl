# Default policy for GridForge application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "gridforge/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/gridforge-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/gridforge" { capabilities = ["update"] }
path "transit/decrypt/gridforge" { capabilities = ["update"] }
