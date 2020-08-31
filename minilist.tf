resource "null_resource" "minikubeservice" {
  provisioner "local-exec" {
    command = "minikube service list"
    
  }
  depends_on = [
      kubernetes_deployment.deploynode,
      kubernetes_service.servicenode,
      aws_db_instance.mydb
      ]
}