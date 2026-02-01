# Exemplo de arquivo de variáveis terraform
# Copie para terraform.tfvars e ajuste conforme necessário

kubeconfig_path = "../config"
namespace       = "nginx-iac"
# app_name        = "nginx-app"
app_replicas    = 1
app_image       = "nginx:latest"
