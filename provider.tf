terraform {
  required_providers {
    google = {
      version : "~> 4.48"
    }
  }
}

provider "google" {
  alias       = "yucatan"
  project     = "trans-dogfish-374815"
  region      = "europe-west2"
  zone        = "europe-west2-b"
  credentials = file(var.gcp_creds)
}
