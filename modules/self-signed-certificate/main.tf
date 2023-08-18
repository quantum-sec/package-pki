# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CREATE A SELF-SIGNED TLS CERTIFICATE
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

resource "tls_self_signed_cert" "cert" {
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

  validity_period_hours = var.validity_period_hours
  allowed_uses          = var.allowed_uses
  dns_names             = var.dns_names
  ip_addresses          = var.ip_addresses
  is_ca_certificate     = var.is_ca_certificate
  set_subject_key_id    = var.set_subject_key_id
}
