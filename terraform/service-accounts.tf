resource "google_service_account" "compute-sa" {
  provider     = google.crimson
  account_id   = "compute-sa"
  display_name = "Compute Service Account"
  description  = "Primary Compute Service Account"
  disabled     = false
}
