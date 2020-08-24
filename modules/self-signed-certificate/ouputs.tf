output "cert_pem" {
  description = "The certificate data in PEM format."
  value       = tls_self_signed_cert.cert.cert_pem
}

output "validity_start_time" {
  description = "The time after which the certificate is valid, as an RFC3339 timestamp."
  value       = tls_self_signed_cert.cert.validity_start_time
}

output "validity_end_time" {
  description = "The time until which the certificate is valid, as an RFC3339 timestamp."
  value       = tls_self_signed_cert.cert.validity_end_time
}
