terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.31.0"
    }
  }
}

provider "google" {
  alias       = "crimson"
  project     = "crimson-leaf-3711"
  region      = "europe-west2"
  zone        = "europe-west2-b"
  credentials = file(var.gcp_credentials)
}
