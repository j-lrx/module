resource "google_container_cluster" "container_cluster" {
    provider                     = "google-beta"
    name                         = var.name
    location                     = var.location
    project                      = var.project
    network                      = var.network
    subnetwork                   = var.subnetwork
    min_master_version           = "latest"

    remove_default_node_pool     = true
    initial_node_count           = 1
    
    cluster_autoscaling {
        enabled = true
        resource_limits {
            resource_type = "cpu"
            minimum       = 1
            maximum       = 9
        }
        resource_limits {
            resource_type = "memory"
            minimum       = 3
            maximum       = 34
        }
    }

    addons_config {
        network_policy_config {
            disabled = false
        }

        http_load_balancing {
            disabled = false
        }

        kubernetes_dashboard {
            disabled = false
        }
    }

    network_policy {
        enabled                  = true
        provider                 = "CALICO"
    }

    ip_allocation_policy {
        node_ipv4_cidr_block     = var.node_ipv4_cidr
        cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr
        services_ipv4_cidr_block = var.services_ipv4_cidr
       
    }
}
