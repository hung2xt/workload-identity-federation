
variable "gcp_params" {
  type = object({
    project_id = string
    region = string
    zone = string
    service_account = string
    cluster_name = string
    service_account_name = string
    service_account_namespace = string
    service_name = string
  })

  description = "Google Cloud infomation"

  default = {
    project_id = "sawyer-work-1804"
    region = "asia-northeast1"
    zone = "asia-northeast1-a"
    service_account = "terraform-gcp@sawyer-work-1804.iam.gserviceaccount.com"
    cluster_name = "airflow-cluster"
    service_account_name = "worker"
    service_account_namespace = "default"
    service_name = "airflow-config-service"
  }
}

variable "region" {
  description = "The location region to deploy the Cloud Run services. Note: Be sure to pick a region that supports Cloud Run."
  type        = string
  default = "us-central1"
}

variable "zone" {
  description = "The location zone to deploy the Cloud Run services. Note: Be sure to pick a region that supports Cloud Run."
  type        = string
  default = "us-central1-a"
}

variable "gcr_region" {
  description = "Name of the GCP region where the GCR registry is located. e.g: 'us' or 'eu'."
  type        = string
  default = "us-central1"
}

variable "branch_name" {
    description = "Example branch name used to trigger builds."
    default = "master"
}

variable "service_name" {
  description = "The name of the Cloud Run service to deploy."
  type        = string
  default     = "config-service"
}

variable "repository_name" {
  description = "Name of the Google Cloud Source Repository to create."
  type        = string
  default     = "sample-app"
}

variable "image_name" {
  description = "The name of the image to deploy. Defaults to a publically available image."
  type        = string
  default     = "gcr.io/cloudrun/hello"
}

variable "service_account_name" {
  description = "The name of the Service Account."
  type        = string
  default     = "config-service"
}