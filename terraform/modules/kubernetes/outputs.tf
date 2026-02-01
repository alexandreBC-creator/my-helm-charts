
output "namespace" {
  description = "Kubernetes namespace used"
  value       = var.namespace
}

output "app_url" {
  description = "Application access URL (NodePort)"
  value       = "http://localhost:30080"
}
