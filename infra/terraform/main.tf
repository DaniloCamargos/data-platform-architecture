terraform {
  required_version = ">= 1.3.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Exemplo: bucket para Bronze (raw) e dataset BigQuery
resource "google_storage_bucket" "bronze" {
  name     = "${var.project_id}-lake-bronze"
  location = var.region
  uniform_bucket_level_access = true
}

resource "google_bigquery_dataset" "lakehouse" {
  dataset_id = "lakehouse"
  location   = var.region
  friendly_name = "Lakehouse Dataset"
  depends_on = [google_storage_bucket.bronze]
}
