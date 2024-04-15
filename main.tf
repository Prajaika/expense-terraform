#resource "local_file" "foo" {
#  #content  = var.vault_token
#  content  = jsondecode(data.vault_generic_secret.ssh.data_json).ansible_user
#  filename = "/tmp/test"
#}

#data "vault_generic_secret" "ssh" {
#  path = "common/ssh"
#}

module "vpc" {
  source = "./modules/vpc"
  env    = var.env
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  default_vpc_id = var.default_vpc_id
  default_vpc_cidr = var.default_vpc_cidr
}


