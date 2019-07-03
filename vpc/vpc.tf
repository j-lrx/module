resource "google_compute_network" "vpc"{
    Name                     = "${var.name}"
    project                  = "${var.project_id}"
    auto_create_subnectworks = false
}