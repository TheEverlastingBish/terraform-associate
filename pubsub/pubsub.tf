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
