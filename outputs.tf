output "vm-prime-int-ip" {
  value       = google_compute_instance.yucatan-vm-prime.network_interface[0].network_ip
  sensitive   = false
  description = "Internal IP of Yucantan VM Prime"
}
