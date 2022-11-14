data "template_file" "MskCustomConfiguration" {
  template = file("./msk-custom-configuration.json.tpl")
  vars = {
    auto_create_topics_enable        = var.kafka_custom_config_auto_create_topics
    delete_topic_enable              = var.kafka_custom_config_delete_topics
    default_replication_factor       = var.kafka_custom_config_default_replication_factor
    min_insync_replicas              = var.kafka_custom_config_min_insync_replicas
    num_io_threads                   = var.kafka_custom_config_num_io_threads
    num_network_threads              = var.kafka_custom_config_num_network_threads
    num_partitions                   = var.kafka_custom_config_num_partitions
    num_replica_fetchers             = var.kafka_custom_config_num_replica_fetchers
    socket_request_max_bytes         = var.kafka_custom_config_socket_request_max_bytes
    unclean_leader_election_enable   = var.kafka_custom_config_unclean_leader_election_enable
    offsets_topic_replication_factor = var.kafka_custom_config_offsets_topic_replication_factor
  }
}
