resource "null_resource" "minikubestart" {
  provisioner "local-exec" {
    command = "minikube start"
    
  }
}
provider "kubernetes" {
  config_context_cluster = "minikube" 
}
