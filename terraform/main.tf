resource "google_compute_instance" "my-vm" {
  name         = "anatolii-shokha-lab4-vm"
  machine_type = "e2-micro"           # Machine type
  zone         = "europe-central2-a"      # Zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Machine image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ensure that we obtain an external IP address for the instance
    }
  }
}
