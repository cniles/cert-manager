resource "aws_acm_certificate" "acm_cert" {
  private_key      = file("${var.acme_dir}/${var.cert_name}/${var.cert_name}.key")
  certificate_body = file("${var.acme_dir}/${var.cert_name}/${var.cert_name}.cer")
  certificate_chain = file("${var.acme_dir}/${var.cert_name}/fullchain.cer")
}

