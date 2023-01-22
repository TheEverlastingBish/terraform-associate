resource "google_bigquery_dataset" "sources-nues" {
  dataset_id = "sources_nues"
}

resource "google_bigquery_table" "nues-source-web-prod-table" {
  project             = var.gcp-project
  dataset_id          = google_bigquery_dataset.sources-nues.dataset_id
  table_id            = "atomic_nues_web_prod"
  deletion_protection = false

  schema = <<EOF
[
  {
    "name": "data",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The data"
  }
]
EOF
}
