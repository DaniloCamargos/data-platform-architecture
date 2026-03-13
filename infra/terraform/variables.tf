variable "project_id" {
  type        = string
  description = "ID do projeto GCP onde os recursos serão criados."
}

variable "region" {
  type        = string
  description = "Região do GCP onde os recursos serão criados."
  default     = "us-central1"
}
