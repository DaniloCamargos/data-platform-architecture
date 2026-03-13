output "bucket_bronze" {
  value = google_storage_bucket.bronze.name
}

output "bq_dataset" {
  value = google_bigquery_dataset.lakehouse.dataset_id
}
