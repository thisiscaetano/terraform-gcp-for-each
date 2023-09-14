resource "google_compute_instance" "this" {
  for_each = local.google_compute_instance

  project      = "xxx"
  name         = each.key
  zone         = each.value.zone
  machine_type = each.value.machine_type
  boot_disk {
    initialize_params {
      image = each.value.boot_disk.initialize_params.image
    }
  }
  network_interface {
    subnetwork = each.value.network_interface.subnetwork
  }
}