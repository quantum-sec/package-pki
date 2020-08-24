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
  type        = string
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
