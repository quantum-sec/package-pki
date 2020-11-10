variable "cert_request_pem" {
  description = "The PEM-encoded certificate request data."
  type        = string
}

variable "ca_private_key_algorithm" {
  description = "The name of the algorithm for the provided CA private key."
  type        = string
  default     = "ECDSA" # tfsec:ignore:GEN001
}

variable "ca_private_key_pem" {
  description = "The PEM-encoded private key data for the CA."
  type        = string
}

variable "ca_cert_pem" {
  description = "The PEM-encoded certificate data for the CA."
  type        = string
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
