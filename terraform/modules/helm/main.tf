resource "helm_release" "nginx" {
  name       = var.app_name
  chart      = "${path.module}/charts/my-nginx-chart" 
  namespace  = var.namespace

  set {
    name  = "replicaCount"
    value = var.app_replicas
  }

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "service.nodePorts.http"
    value = "30080"
  }

}