resource "google_compute_network" "vpc"{
    name                     = "${var.name}"
    project                  = "${var.project}"
    auto_create_subnetworks  = "${var.auto_create_subnetworks}"
    description              = "${var.description}"
}
