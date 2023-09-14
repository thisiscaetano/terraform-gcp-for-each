locals {
  google_compute_instance = {
    "piruleibe-vm1" = {
      zone         = "us-east1-b"
      machine_type = "e2-medium"
      boot_disk = {
        initialize_params = {
          image = "debian-cloud/debian-10"
        }
      }
      network_interface = {
        subnetwork = "xxx"
        access_config = { //Ephemral public IP}
        }
      }
    }

    "piruleibe-vm2" = {
      zone         = "us-east1-c"
      machine_type = "e2-standard-4"
      boot_disk = {
        initialize_params = {
          image = "debian-cloud/debian-12"
        }
      }
      network_interface = {
        subnetwork = "xxx"
        access_config = { //Ephemral public IP}
        }
      }
    }
  }
}