variable "gcp_project"   { type = string }
variable "gcp_region"    { type = string  default = "europe-west4" }
variable "environment"   { type = string  default = "prod" }
variable "subnet_cidr"   { type = string  default = "10.50.0.0/16" }
variable "pods_cidr"     { type = string  default = "10.60.0.0/14" }
variable "svc_cidr"      { type = string  default = "10.64.0.0/16" }
variable "gke_version"   { type = string  default = "1.31" }
variable "node_min"      { type = number  default = 3 }
variable "node_max"      { type = number  default = 30 }
variable "node_machine"  { type = string  default = "e2-standard-4" }
variable "pg_tier"       { type = string  default = "db-custom-4-16384" }
variable "pg_version"    { type = string  default = "POSTGRES_16" }
variable "redis_size_gb" { type = number  default = 5 }
