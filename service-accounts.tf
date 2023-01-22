resource "google_service_account" "compute-sa" {
  provider     = google.yucatan
  account_id   = "compute-sa"
  display_name = "Compute Service Account"
  description  = "Primary Compute Service Account"
  disabled     = false
}
