provider "google" {
  credentials = file("/Users/hungnp14/Desktop/DE/GCP_TOOL/config-service-googlesheet/app/credentials/sawyer-work-1804-65e64232ab96.json")
  project     = var.gcp_params.project_id
  region      = var.gcp_params.region
  zone        = var.gcp_params.zone
}
