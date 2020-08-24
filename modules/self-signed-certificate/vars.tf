variable "key_algorithm" {
  description = "The name of the algorithm for the provided private key."
  type        = string
  default     = "ECDSA"
}

variable "private_key_pem" {
  description = "The PEM-encoded private key data."
  type        = string
}

variable "common_name" {
  description = "The Common Name (CN) property of the certificate subject distinguished name (DN)."
  type        = string
}

variable "organization" {
  description = "The Organization (O) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "organizational_unit" {
  description = "The Organizational Unit (OU) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "street_address" {
  description = "The street address (STREET) property of the certificate subject distinguished name (DN)."
  type        = list(string)
  default     = null
}

variable "locality" {
  description = "The Locality (L) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "state" {
  description = "The state or province (ST) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "postal_code" {
  description = "The postal code (PC) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "country" {
  description = "The two-letter ISO country code (C) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "serial_number" {
  description = "The serial number (SERIALNUMBER) property of the certificate subject distinguished name (DN)."
  type        = string
  default     = null
}

variable "validity_period_hours" {
  description = "The number of hours after initial issuing that the certificate will become invalid."
  type        = number
  default     = 8760
}

variable "allowed_uses" {
  description = "A set of allowed uses for this certificate. Any of `digital_signature`, `content_commitment`, `key_encipherment`, `data_encipherment`, `key_agreement`, `cert_signing`, `crl_signing`, `encipher_only`, `decipher_only`, `any_extended`, `server_auth`, `client_auth`, `code_signing`, `email_protection`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `timestamping`, or `ocsp_signing`."
  type        = set(string)
  default = [
    "key_encipherment",
    "data_encipherment",
    "key_agreement",
    "any_extended",
  ]
}

variable "dns_names" {
  description = "A set of DNS names for which the certificate is being requested."
  type        = set(string)
  default     = null
}

variable "ip_addresses" {
  description = "A set of IP addresses for which the certificate is being requested."
  type        = set(string)
  default     = null
}

variable "is_ca_certificate" {
  description = "Whether or not the CA flag flag will be set in the generated certificate."
  type        = bool
  default     = false
}

variable "set_subject_key_id" {
  description = "Whether or not the certificate will include the subject key identifier."
  type        = bool
  default     = false
}
