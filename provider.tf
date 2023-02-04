provider "google-beta" {
  credentials = file("gcp-service-account.json")
  project     = var.gcp_params.project_id
  region      = var.gcp_params.region
  zone        = var.gcp_params.zone
}
