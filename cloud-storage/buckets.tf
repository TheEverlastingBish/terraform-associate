resource "google_storage_bucket" "yucatan-bucket-prime" {
    name          = "yucatan-bucket-prime"
    location      = "europe-west2-b"
    force_destroy = true
}
