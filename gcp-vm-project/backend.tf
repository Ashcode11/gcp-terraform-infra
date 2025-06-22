terraform {
  backend "gcs" {
    bucket  = "gcp-vm-terraform-state"
    prefix  = "terraform/state"
  }
}
