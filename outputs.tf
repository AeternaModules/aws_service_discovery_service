output "service_discovery_services_id" {
  description = "Map of id values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_discovery_services_arn" {
  description = "Map of arn values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "service_discovery_services_description" {
  description = "Map of description values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.description if v.description != null && length(v.description) > 0 }
}
output "service_discovery_services_dns_config" {
  description = "Map of dns_config values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => one(v.dns_config) if v.dns_config != null && length(v.dns_config) > 0 }
}
output "service_discovery_services_force_destroy" {
  description = "Map of force_destroy values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.force_destroy if v.force_destroy != null }
}
output "service_discovery_services_health_check_config" {
  description = "Map of health_check_config values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => one(v.health_check_config) if v.health_check_config != null && length(v.health_check_config) > 0 }
}
output "service_discovery_services_health_check_custom_config" {
  description = "Map of health_check_custom_config values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => one(v.health_check_custom_config) if v.health_check_custom_config != null && length(v.health_check_custom_config) > 0 }
}
output "service_discovery_services_name" {
  description = "Map of name values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_discovery_services_namespace_id" {
  description = "Map of namespace_id values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "service_discovery_services_region" {
  description = "Map of region values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.region if v.region != null && length(v.region) > 0 }
}
output "service_discovery_services_tags" {
  description = "Map of tags values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "service_discovery_services_tags_all" {
  description = "Map of tags_all values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "service_discovery_services_type" {
  description = "Map of type values across all service_discovery_services, keyed the same as var.service_discovery_services"
  value       = { for k, v in aws_service_discovery_service.service_discovery_services : k => v.type if v.type != null && length(v.type) > 0 }
}

