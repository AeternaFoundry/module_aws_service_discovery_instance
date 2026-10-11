variable "service_discovery_instances" {
  description = <<EOT
Map of service_discovery_instances, attributes below
Required:
    - attributes
    - instance_id
    - service_id
Optional:
    - region
EOT

  type = map(object({
    attributes  = map(string)
    instance_id = string
    service_id  = string
    region      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_discovery_instances : (
        length(v.service_id) >= 1 && length(v.service_id) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

