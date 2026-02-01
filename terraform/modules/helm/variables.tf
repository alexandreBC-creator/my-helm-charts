variable "namespace" {
  description = "Kubernetes namespace for deployments"
  type        = string
  default     = "default"
}

variable "app_replicas" {
  description = "Number of replicas"
  type        = number
  default     = 2
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "nginx-app"
}