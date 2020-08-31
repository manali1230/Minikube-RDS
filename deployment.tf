resource "kubernetes_deployment" "deploynode" {
  metadata {
    name = "wordpress-node"
    labels = {
      test = "cms"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "cms"
      }
    }

    template {
      metadata {
        labels = {
          test = "cms"
        }
      }

      spec {
        container {
          image = "wordpress"
          name  = "wordpress-sql"

        }
      }
    }
  }
}