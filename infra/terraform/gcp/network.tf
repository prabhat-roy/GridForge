resource "google_compute_network" "this" {
  name                    = "gridforge-${var.environment}"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "this" {
  name          = "gridforge-${var.environment}-${var.gcp_region}"
  ip_cidr_range = var.subnet_cidr
  region        = var.gcp_region
  network       = google_compute_network.this.id
  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = var.pods_cidr
  }
  secondary_ip_range {
    range_name    = "svcs"
    ip_cidr_range = var.svc_cidr
  }
  private_ip_google_access = true
}

resource "google_compute_router" "this" {
  name    = "gridforge-${var.environment}"
  region  = var.gcp_region
  network = google_compute_network.this.id
}

resource "google_compute_router_nat" "this" {
  name                               = "gridforge-${var.environment}"
  router                             = google_compute_router.this.name
  region                             = var.gcp_region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
