data "google_compute_zones" "available" {
  region = var.cloud_location[var.location].gcp
  status = "UP"
}

resource "google_compute_instance" "haproxy" {
  name         = format("%s-lb", var.name)
  machine_type = "n1-standard-1"
  zone         = data.google_compute_zones.available.names[0]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network    = var.vpc_id
    subnetwork = var.subnet_id
    access_config {
      // Ephemeral IP
    }
  }
  metadata = {
    ssh-keys = format("ubuntu:%s", file(format("%s/files/id_rsa.pub", path.module)))
    user-data = templatefile(
      format("%s/files/haproxy.yaml", path.module),
      { ips = var.ips }
    )
  }
}
