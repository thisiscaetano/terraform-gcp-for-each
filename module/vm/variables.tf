variable "region" {
  type    = string
  default = "us-east1"
}

variable "project_id" {
  type = string
}

variable "subnetwork" {
  type    = string
  default = ""
}

variable "vpc" {
  type    = string
  default = ""
}

variable "name" {
  type    = string
  default = ""
}

variable "machine_type" {
  type    = string
  default = "e2-medim"
}

variable "zone" {
  type    = string
  default = "us-east1-b"
}

variable "gcs_image" {
  type    = string
  default = ""
}

variable "boot_disk_size" {
  type    = number
  default = 100
}

variable "network_project_id" {
  type = string

}
variable "labels" {
  type = any
  default = {
    costcenter = ""
    created-by = ""
    created-on = ""
    env        = ""
    owner      = ""
  }
}

variable "metadata_startup" {
  type    = string
  default = ""
}