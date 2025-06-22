module "network" {
  source       = "./modules/network"
  project_id   = var.project_id
  region       = var.region
  network_name = var.network_name
  subnet_name  = var.subnet_name
}

module "compute" {
  source          = "./modules/compute"
  project_id      = var.project_id
  region          = var.region
  zone            = var.zone
  instance_name   = var.instance_name
  machine_type    = var.machine_type
  network_self_link = module.network.network_self_link
  subnet_self_link  = module.network.subnet_self_link
}
