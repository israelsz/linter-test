output "instance_id" {
  description = "The instance ID"
  value       = google_compute_instance.demo.id
}

output "instance_ip" {
  description = "The external IP of the instance"
  value       = google_compute_instance.demo.network_interface[0].access_config[0].nat_ip
}
