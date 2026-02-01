variable "namespace" {
  description = "Kubernetes namespace for deployments"
  type        = string
  default     = "default"
}
variable "app_name" {
  description = "Application name"
  type        = string
  default     = "nginx-app"
}
