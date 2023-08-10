# output "google_compute_network" {
#   description = "Name of google compute network"
#   value       = google_compute_network.gcp-vpc.*.name
# }

output "compute_network_name" {
  value       = "network"
  description = "The created network"
}
