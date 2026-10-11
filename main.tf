resource "confluent_kafka_cluster_config" "kafka_cluster_configs" {
  for_each = var.kafka_cluster_configs

  config        = each.value.config
  rest_endpoint = each.value.rest_endpoint

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "kafka_cluster" {
    for_each = each.value.kafka_cluster != null ? [each.value.kafka_cluster] : []
    content {
      id = kafka_cluster.value.id
    }
  }
}

