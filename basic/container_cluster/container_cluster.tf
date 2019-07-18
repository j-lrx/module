resource "google_container_cluster" "container_cluster" {
    name                        = var.name
    location                    = var.location
    project                     = var.project
    network                     = var.network
    subnetwork                  = var.subnetwork

    network_policy {
        enabled                 = true
        provider                = "CALICO"
    }

    cluster_autoscaling {
        enabled = true
        resource_limits {
            resource_type = "cpu"
            minimum = 3
        }
        resource_limits {
            resource_type = "memory"
            minimum = 11
      }
    }

    node_pool {
        name               = "pool"
        /*initial_node_count = "${var.initial_node_count}"*/

        management {
            auto_repair  = var.auto_repair
            auto_upgrade = var.auto_upgrade
        }      

        autoscaling {
            min_node_count = var.min_node_count
            max_node_count = var.max_node_count
        }

        node_config {
            preemptible  = var.preemptible
            machine_type = var.machine_type
        }
    }
}