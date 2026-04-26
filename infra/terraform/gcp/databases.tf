resource "google_compute_global_address" "pg" {
  name          = "gridforge-${var.environment}-pg-psa"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.this.id
}

resource "google_service_networking_connection" "pg" {
  network                 = google_compute_network.this.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.pg.name]
}

resource "random_password" "pg" { length = 32  special = false }

resource "google_sql_database_instance" "postgres" {
  provider            = google-beta
  name                = "gridforge-${var.environment}"
  database_version    = var.pg_version
  region              = var.gcp_region
  deletion_protection = true
  depends_on          = [google_service_networking_connection.pg]
  settings {
    tier = var.pg_tier
    backup_configuration {
      enabled                        = true
      point_in_time_recovery_enabled = true
      transaction_log_retention_days = 7
    }
    ip_configuration {
      ipv4_enabled    = false
      private_network = google_compute_network.this.id
    }
    insights_config { query_insights_enabled = true }
  }
}

resource "google_sql_user" "gridforge" {
  name     = "gridforge"
  instance = google_sql_database_instance.postgres.name
  password = random_password.pg.result
}

resource "google_sql_database" "gridforge" {
  name     = "gridforge"
  instance = google_sql_database_instance.postgres.name
}

resource "google_redis_instance" "redis" {
  name                    = "gridforge-${var.environment}"
  tier                    = "STANDARD_HA"
  memory_size_gb          = var.redis_size_gb
  region                  = var.gcp_region
  authorized_network      = google_compute_network.this.id
  redis_version           = "REDIS_7_0"
  transit_encryption_mode = "SERVER_AUTHENTICATION"
}

resource "google_pubsub_topic" "audit" { name = "gridforge-${var.environment}-audit" }
