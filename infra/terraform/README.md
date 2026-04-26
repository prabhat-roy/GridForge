# Terraform — GridForge Multi-Cloud Infrastructure

Each cloud has a complete, standalone deployment path. Pick AWS, GCP, or Azure
and bring up the entire GridForge platform on it without depending on the others.

## Layout
- `aws/`   — VPC + EKS + RDS Postgres + ElastiCache + MSK + S3 + KMS + Secrets Manager
- `gcp/`   — VPC + GKE + Cloud SQL + Memorystore + Pub/Sub + GCS + KMS + Secret Manager
- `azure/` — VNet + AKS + Postgres Flex + Azure Cache + Event Hubs + Blob + Key Vault

## Apply
```bash
cd infra/terraform/aws   && terraform init && terraform apply -var-file=prod.tfvars
cd infra/terraform/gcp   && terraform init && terraform apply -var-file=prod.tfvars
cd infra/terraform/azure && terraform init && terraform apply -var-file=prod.tfvars
```
