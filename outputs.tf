output "id" {
  value       = hcloud_firewall.fw.id
  description = "Unique ID of the Firewall."
}

output "name" {
  value       = hcloud_firewall.fw.name
  description = "Name of the Firewall."
}

output "labels" {
  value       = hcloud_firewall.fw.labels
  description = "Resource labels."
}
