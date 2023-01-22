resource "google_project_iam_member" "viewer" {
  project = var.gcp-project
  role    = "roles/bigquery.metadataViewer"
  member  = "serviceAccount:service-${var.gcp-project}@gcp-sa-pubsub.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "editor" {
  project = var.gcp-project
  role    = "roles/bigquery.dataEditor"
  member  = "serviceAccount:service-${var.gcp-project}@gcp-sa-pubsub.iam.gserviceaccount.com"
}
