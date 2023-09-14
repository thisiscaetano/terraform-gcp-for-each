variable "project_id" {
  description = "The project ID"
  default     = "xxx"
}
variable "subnetwork" {
  description = "The subnetwork_selflink of the VM"
  default     = "xxx"
}
variable "network_project_id" {
  default = "xxx"
}
variable "machine_type" {
  description = "The machine_type of the VM"
  default     = "e2-medium"
}

variable "zone" {
  description = "The zone of the VM"
  default     = "us-east1-b"
}

variable "gcs_image" {
  description = "The image of the VM"
  default     = "debian-cloud/debian-10"
}

variable "boot_disk_size" {
  description = "The disk size of the VM"
  default     = "100"
}

