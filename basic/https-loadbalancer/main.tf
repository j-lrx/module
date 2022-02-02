resource "google_compute_global_forwarding_rule" "default" {
  name                  = "ssl-proxy-xlb-forwarding-rule"
  provider              = google
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "443"
  target                = google_compute_target_ssl_proxy.default.id
  ip_address            = google_compute_global_address.default.id
}

resource "google_compute_global_address" "default" {
  name = "lb-static-ip"
}

resource "google_compute_target_ssl_proxy" "default" {
  name             = "test-proxy"
  backend_service  = var.google_compute_backend_service.default.id            # A remplacer par le backend
  ssl_certificates = ["google_compute_managed_ssl_certificate.default.id"]
}

resource "google_compute_managed_ssl_certificate" "default" {
  name = "test-cert"

  managed {
    domains = ["onepoint-gsuite.cloud"]
  }
}

