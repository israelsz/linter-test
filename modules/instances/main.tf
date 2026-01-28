resource "google_compute_instance" "demo" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network
    access_config {}
  }

  tags = ["demo", "web"]
}
