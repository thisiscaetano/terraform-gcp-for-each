data "google_compute_default_service_account" "this" {
  project = var.project_id
}

resource "google_compute_instance" "this" {
  project                   = var.project_id
  name                      = var.name
  machine_type              = var.machine_type
  zone                      = var.zone
  deletion_protection       = true
  allow_stopping_for_update = true
  enable_display            = true
  # attached_disk {
  #   source = "${var.source_disk}"
  # }

  boot_disk {
    initialize_params {
      image = var.gcs_image
      size  = var.boot_disk_size
      type  = "pd-ssd"
    }
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  network_interface {
    subnetwork         = var.subnetwork
    subnetwork_project = var.network_project_id
  }

  labels = var.labels

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = data.google_compute_default_service_account.this.email
    scopes = ["cloud-platform"]
  }

}
