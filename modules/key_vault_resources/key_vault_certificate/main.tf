resource "azurerm_key_vault_certificate" "cert" {
  name      = var.name
  key_vault_id = var.key_vault_id
  certificate {
    contents = base64encode(file(var.certificate_name))
    password = var.certificate_password
  }

  certificate_policy {
    issuer_parameters {
      name = "Self"
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = false
    }

    secret_properties {
      content_type = "application/x-pkcs12"
    }
  }
}
