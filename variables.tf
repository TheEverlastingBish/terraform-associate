variable "gcp-project" {
  type        = string
  default     = "trans-dogfish-374815"
  description = "GCP Project"
}

variable "gcp-region" {
  type        = string
  default     = "europe-west2"
  description = "GCP Default Region"
}

variable "gcp-zone" {
  type        = string
  default     = "europe-west2-b"
  description = "GCP Default Zone - London, UK"
}

variable "gcp_creds" {
  type        = string
  default     = "~/.secrets/terraform-trans-dogfish-374815-192db5becc1d.json"
  description = "GCP Terraform Service Account Credentials"
}

variable "gcp_tf_sa" {
  type        = string
  default     = "terraform-admin@trans-dogfish-374815.iam.gserviceaccount.com"
  description = "description"
}
