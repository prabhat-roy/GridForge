resource "google_storage_bucket" "documents" {
  name                        = "gridforge-${var.environment}-documents"
  location                    = var.gcp_region
  uniform_bucket_level_access = true
  versioning { enabled = true }
  encryption { default_kms_key_name = google_kms_crypto_key.documents.id }
  force_destroy = false
}
