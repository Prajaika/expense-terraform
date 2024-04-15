#resource "local_file" "foo" {
#  #content  = var.vault_token
#  content  = jsondecode(data.vault_generic_secret.ssh.data_json).ansible_user
#  filename = "/tmp/test"
#}

#data "vault_generic_secret" "ssh" {
#  path = "common/ssh"
#}

module "vpc" {
  source                 = "./modules/vpc"
  env                    = var.env
  vpc_cidr_block         = var.vpc_cidr_block
  default_vpc_id         = var.default_vpc_id
  default_vpc_cidr       = var.default_vpc_cidr
  default_route_table_id = var.default_route_table_id
  frontend_subnets       = var.frontend_subnets
  backend_subnets        = var.backend_subnets
  db_subnets             = var. db_subnets
  availability_zones     = var.availability_zones
}



