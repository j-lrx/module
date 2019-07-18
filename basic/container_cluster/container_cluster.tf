resource "google_container_cluster" "container_cluster" {
    name                        = var.name
    location                    = var.location
    project                     = var.project
    network                     = var.network
    subnetwork                  = var.subnetwork

    remove_default_node_pool    = true
    initial_node_count          = 1

    network_policy {
        enabled                 = true
        provider                = "CALICO"
    }
}