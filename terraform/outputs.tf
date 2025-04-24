output "vm-prime-int-ip" {
  value       = google_compute_instance.crimson-vm-prime.network_interface[0].network_ip
  sensitive   = false
  description = "Internal IP of crimson VM Prime"
}
