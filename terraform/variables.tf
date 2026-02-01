variable "kubeconfig_path" {
  description = "Path to kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

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

variable "app_replicas" {
  description = "Number of replicas"
  type        = number
  default     = 2
}

variable "app_image" {
  description = "Docker image for the application"
  type        = string
  default     = "nginx:latest"
}
variable "kubeconfig_context" {
  description = "Kubernetes context name"
  type        = string
  default     = "kind-castilhos-lab"
}