resource "google_compute_firewall" "firewall-rule" {
  name      = "${var.name}"
  project   = "${var.project}"
  network   = "${var.network}"
  description = "Creates Firewall rule targetting tagged instances"

  allow {
    protocol = var.protocol
    ports    = var.ports
  }
  target_tags   = var.tags
  source_ranges = var.source_ranges
}
