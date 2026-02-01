resource "kubernetes_namespace" "app" {
  count = var.namespace != "default" ? 1 : 0
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_config_map" "app_config" {
  metadata {
    name      = "${var.app_name}-config"
    namespace = var.namespace
  }

  data = {
    "app.conf" = <<-EOT
      server {
        listen 8080;
        server_name localhost;
        
        location / {
          root /usr/share/nginx/html;
          index index.html;
        }
      }
    EOT
  }
}