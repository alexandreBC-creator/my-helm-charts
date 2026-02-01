output "helm_release_status" {
  description = "Status of the Helm release"
  value       = helm_release.nginx.status
}

output "helm_release_version" {
  description = "Version of the deployed Helm release"
  value       = helm_release.nginx.version
}