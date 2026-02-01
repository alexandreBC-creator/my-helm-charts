module "kubernetes" {
  source = "./modules/kubernetes"
  namespace = var.namespace
  app_name = var.app_name
  
}

module "helm" {
  source = "./modules/helm"
  namespace = var.namespace
  app_name = var.app_name
  app_replicas = var.app_replicas
  depends_on = [
    module.kubernetes
  ]
}