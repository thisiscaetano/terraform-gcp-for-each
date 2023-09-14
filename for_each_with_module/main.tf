module "vm_instances" {
  source = "../module/vm"
  for_each = toset([
    "piruleibe-vm1",
    "piruleibe-vm2"
  ])

  project_id         = var.project_id
  subnetwork         = var.subnetwork
  name               = each.key
  machine_type       = var.machine_type
  zone               = var.zone
  gcs_image          = var.gcs_image
  boot_disk_size     = var.boot_disk_size
  network_project_id = var.network_project_id
}