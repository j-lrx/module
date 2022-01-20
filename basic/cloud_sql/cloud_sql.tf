resource "google_sql_database_instance" "sql_db" {
  name             = var.name
  database_version = var.version
  region           = var.region
  
  depends_on = var.private_vpc_connection

  settings {
    tier = var.tier
    
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network
    }
  }
}
