// Doesn't seem to work for GCP
/*
resource "null_resource" "vm-terminate" {
  triggers = {
    public_ip = google_compute_instance.crimson-vm-prime.network_interface[0].network_ip
  }

  connection {
    type        = "ssh"
    user        = var.gcp_tf_sa
    host        = google_compute_instance.crimson-vm-prime.network_interface[0].network_ip
    private_key = file(var.gcp_credentials)
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "gcloud compute instances stop youcantan-vm-prime"
    ]
  }
}
*/


// https://github.com/hashicorp/terraform/issues/17726#issuecomment-377357866
/*
resource "null_resource" "before" {
}

resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 10"
  }
  triggers = {
    "before" = "${null_resource.before.id}"
  }
}

resource "null_resource" "after" {
  depends_on = ["null_resource.delay"]
}
*/
