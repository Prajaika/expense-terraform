module "mysql" {
  source        = "./modules/app"
  instance_type = var.instance_type
  component     = "mysql"
  ssh_user      = var.ssh_user
  ssh_pass      = var.ssh_pass
  env           = var.env
  zone_id       = var.zone_id
}

