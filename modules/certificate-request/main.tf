# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CREATE A TLS CERTIFICATE REQUEST
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 1.2"
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }
  }
}

resource "tls_cert_request" "request" {
  key_algorithm   = var.key_algorithm
  private_key_pem = var.private_key_pem

  subject {
    common_name         = var.common_name
    organization        = var.organization
    organizational_unit = var.organizational_unit
    street_address      = var.street_address
    locality            = var.locality
    province            = var.state
    country             = var.country
    postal_code         = var.postal_code
    serial_number       = var.serial_number
  }

  dns_names    = var.dns_names
  ip_addresses = var.ip_addresses
}
