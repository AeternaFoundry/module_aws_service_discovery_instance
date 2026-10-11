output "service_discovery_instances_id" {
  description = "Map of id values across all service_discovery_instances, keyed the same as var.service_discovery_instances"
  value       = { for k, v in aws_service_discovery_instance.service_discovery_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_discovery_instances_attributes" {
  description = "Map of attributes values across all service_discovery_instances, keyed the same as var.service_discovery_instances"
  value       = { for k, v in aws_service_discovery_instance.service_discovery_instances : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "service_discovery_instances_instance_id" {
  description = "Map of instance_id values across all service_discovery_instances, keyed the same as var.service_discovery_instances"
  value       = { for k, v in aws_service_discovery_instance.service_discovery_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "service_discovery_instances_region" {
  description = "Map of region values across all service_discovery_instances, keyed the same as var.service_discovery_instances"
  value       = { for k, v in aws_service_discovery_instance.service_discovery_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "service_discovery_instances_service_id" {
  description = "Map of service_id values across all service_discovery_instances, keyed the same as var.service_discovery_instances"
  value       = { for k, v in aws_service_discovery_instance.service_discovery_instances : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}

