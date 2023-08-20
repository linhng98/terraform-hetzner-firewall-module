output "id" {
  value       = module.fw.id
  description = "Unique ID of the Firewall."
}

output "name" {
  value       = module.fw.name
  description = "Name of the Firewall."
}

output "labels" {
  value       = module.fw.labels
  description = "Resource labels."
}
