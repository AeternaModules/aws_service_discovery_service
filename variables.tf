variable "service_discovery_services" {
  description = <<EOT
Map of service_discovery_services, attributes below
Required:
    - name
Optional:
    - description
    - force_destroy
    - namespace_id
    - region
    - tags
    - tags_all
    - type
    - dns_config (block):
        - dns_records (required, block):
            - ttl (required)
            - type (required)
        - namespace_id (required)
        - routing_policy (optional)
    - health_check_config (block):
        - failure_threshold (optional)
        - resource_path (optional)
        - type (optional)
    - health_check_custom_config (block):
        - failure_threshold (optional)
EOT

  type = map(object({
    name          = string
    description   = optional(string)
    force_destroy = optional(bool)
    namespace_id  = optional(string)
    region        = optional(string)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    type          = optional(string)
    dns_config = optional(object({
      dns_records = list(object({
        ttl  = number
        type = string
      }))
      namespace_id   = string
      routing_policy = optional(string)
    }))
    health_check_config = optional(object({
      failure_threshold = optional(number)
      resource_path     = optional(string)
      type              = optional(string)
    }))
    health_check_custom_config = optional(object({
      failure_threshold = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_discovery_services : (
        v.dns_config == null || (length(v.dns_config.dns_records) >= 1)
      )
    ])
    error_message = "Each dns_records list must contain at least 1 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

