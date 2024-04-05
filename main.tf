module "frontend" {
  depends_on = [module.backend]

  source        = "./modules/app"
  instance_type = var.instance_type
  component     = "frontend"
  env           = var.env
  zone_id       = var.zone_id
}

module "backend" {
  depends_on = [module.mysql]

  source        = "./modules/app"
  instance_type = var.instance_type
  component     = "backend"
  env           = var.env
  zone_id       = var.zone_id
}



module "mysql" {
  source        = "./modules/app"
  instance_type = var.instance_type
  component     = "mysql"
  env           = var.env
  zone_id       = var.zone_id
}


resource "local_file" "foo" {
  #content  = var.vault_token 
  content  = jsondecode(data.vault_generic_secret.ssh.data_json).ansible_password
  filename = "/tmp/test"
}

data "vault_generic_secret" "ssh" {
  path = "common/ssh"
}
