resource "google_storage_bucket" "crimson-bucket-prime" {
    name          = "crimson-bucket-prime"
    location      = "europe-west2-b"
    force_destroy = true
}
