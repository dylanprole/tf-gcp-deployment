terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
  backend "gcs" {
    bucket  = "taxi-rides-ny-412407-terraform-backend"
    prefix  = "dev"
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_bigquery_dataset" "prod_dataset" {
  dataset_id = var.bq_dataset_prod
  location   = var.location
}

resource "google_storage_bucket" "prod-bucket" {
  name                     = var.gcs_bucket_name
  location                 = var.location
  force_destroy            = true
  storage_class            = var.gcs_storage_class
  public_access_prevention = "enforced"

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}