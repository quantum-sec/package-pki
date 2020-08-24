output "cert_request_pem" {
  description = "The certificate request data in PEM format."
  value       = tls_cert_request.request.cert_request_pem
}
