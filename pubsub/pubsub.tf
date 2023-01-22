resource "google_pubsub_topic" "nues-web-prod" {
  name = "nues-web-prod"
}

resource "google_pubsub_subscription" "nues-web-prod-bqsub" {
  name  = "nues-web-prod-bqsub-1"
  topic = google_pubsub_topic.nues-web-prod.name

  ack_deadline_seconds = 30

  labels = {
    env = "production"
  }

  bigquery_config {
    table = "${google_bigquery_table.test.project}:${google_bigquery_table.test.dataset_id}.${google_bigquery_table.test.table_id}"
  }

  depends_on = [
    google_project_iam_member.viewer,
    google_project_iam_member.editor,
    google_bigquery_table.nues-source-web-prod-table
  ]
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
