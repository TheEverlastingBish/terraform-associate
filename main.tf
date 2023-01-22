module "big-query" {
  source = "./big-query"
}

module "cloud-storage" {
  source = "./cloud-storage"
}

module "pubsub" {
  source = "./pubsub"
}

module "compute" {
  source = "./compute"
}

module "iam" {
  source = "./iam"
}

resource "google_compute_instance" "yucatan-vm-prime" {
  provider                  = google.yucatan
  name                      = "yucatan-vm-prime"
  machine_type              = "e2-medium"
  tags                      = ["foo", "bar"]
  allow_stopping_for_update = true
  labels = {
    env = "production"
  }
  network_interface {
    network = "default"

    access_config {
      // ephemeral IP
    }
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  metadata = {
    ssh-keys = "${var.gcp_tf_sa}:${file(var.gcp_creds)}"
  }

  metadata_startup_script = <<-EOF
    sudo apt-get install -y apache2 && sudo service apache2 start 
    echo '<!doctype html><html><body><h1>CONGRATULATIONS!!..You are on your way to become a Terraform expert!</h1></body></html>' | sudo tee /var/www/html/index.html"
    EOF

  lifecycle {
    create_before_destroy = "true"
  }
}
