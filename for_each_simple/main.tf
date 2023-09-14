resource "google_compute_instance" "this" {
  for_each     = toset(["name1", "name2"])
  name         = each.key
  zone         = "us-east1-b"
  project      = "xxx"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    subnetwork = "xxx"
    access_config {
      // Ephemeral public IP
    }
  }

}