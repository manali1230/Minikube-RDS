resource "kubernetes_service" "servicenode" {
  metadata {
    name = "service-node"
  }
  spec {
    selector = {
      test = "${kubernetes_deployment.deploynode.metadata.0.labels.test}"
    }
    port {
      port        = 80
      target_port = 80
      protocol = "TCP"
    }

    type = "NodePort"
  }
   depends_on = [kubernetes_deployment.deploynode]
}
