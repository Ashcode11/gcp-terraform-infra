provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "network" {
  source       = "../../modules/network"
  network_name = var.network_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}

module "compute" {
  source         = "../../modules/compute"
  vm_name        = var.vm_name
  machine_type   = var.machine_type
  zone           = var.zone
  image          = var.image
  subnetwork     = module.network.subnet_self_link
  startup_script = var.startup_script
}
