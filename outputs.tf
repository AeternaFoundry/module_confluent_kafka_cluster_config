output "kafka_cluster_configs_id" {
  description = "Map of id values across all kafka_cluster_configs, keyed the same as var.kafka_cluster_configs except keys with no id are omitted"
  value       = { for k, v in confluent_kafka_cluster_config.kafka_cluster_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kafka_cluster_configs_config" {
  description = "Map of config values across all kafka_cluster_configs, keyed the same as var.kafka_cluster_configs except keys with no config are omitted"
  value       = { for k, v in confluent_kafka_cluster_config.kafka_cluster_configs : k => v.config if v.config != null && length(v.config) > 0 }
}
output "kafka_cluster_configs_credentials" {
  description = "Map of credentials values across all kafka_cluster_configs, keyed the same as var.kafka_cluster_configs except keys with no credentials are omitted"
  value       = { for k, v in confluent_kafka_cluster_config.kafka_cluster_configs : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "kafka_cluster_configs_kafka_cluster" {
  description = "Map of kafka_cluster values across all kafka_cluster_configs, keyed the same as var.kafka_cluster_configs except keys with no kafka_cluster are omitted"
  value       = { for k, v in confluent_kafka_cluster_config.kafka_cluster_configs : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "kafka_cluster_configs_rest_endpoint" {
  description = "Map of rest_endpoint values across all kafka_cluster_configs, keyed the same as var.kafka_cluster_configs except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_kafka_cluster_config.kafka_cluster_configs : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}

