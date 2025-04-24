variable "gcp_project" {
  type        = string
  default     = "crimson-leaf-3711"
  description = "GCP Project"
}

variable "gcp_region" {
  type        = string
  default     = "europe-west2"
  description = "GCP Region"
}

variable "gcp_zone" {
  type        = string
  default     = "europe-west2-b"
  description = "GCP Zone"
}

variable "gcp_credentials" {
  type        = string
  default     = "~/secrets/terraform-crimson-leaf-3711-503b37553615.json"
  description = "GCP Terraform Service Account Credentials"
}

variable "gcp_tf_sa" {
  type        = string
  default     = "terraform@crimson-leaf-3711.iam.gserviceaccount.com"
  description = "SA for Terraform operations"
}
