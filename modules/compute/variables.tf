variable "vm_name" {}
variable "machine_type" {}
variable "zone" {}
variable "image" {}
variable "subnetwork" {}
variable "startup_script" {
  default = ""
}
