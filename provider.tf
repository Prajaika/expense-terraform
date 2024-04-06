provider "vault" {
  address         = "https://vault-internal.prajaika.online:8200"
  skip_tls_verify = true
  token           = var.vault_token
}
