variable "kafka_cluster_configs" {
  description = <<EOT
Map of kafka_cluster_configs, attributes below
Required:
    - config
Optional:
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - kafka_cluster (block):
        - id (required)
EOT

  type = map(object({
    config        = map(string)
    rest_endpoint = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    kafka_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

