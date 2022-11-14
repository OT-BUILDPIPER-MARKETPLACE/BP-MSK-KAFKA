## Kafka KMS Key

variable "create_kafka_kms_key_id" {
  type        = bool
  default     = false
  description = "The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true."
}

variable "kafka_key_usage" {
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT, SIGN_VERIFY, or GENERATE_VERIFY_MAC."
  type = string
  default = "ENCRYPT_DECRYPT" 
}

variable "kafka_customer_master_key_spec" {
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports"
  type = string
  default = "SYMMETRIC_DEFAULT"
}

variable "kafka_deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource"
  type        = string
  default     = 30
}

variable "kafka_multi_region" {
  description = "Indicates whether the KMS key is a multi-Region (true) or regional (false) key."
  type = bool
  default = false  
}

variable "kafka_is_enabled" {
  description = "Status of key enable or disbale"
  type        = bool
  default     = true
}

variable "kafka_enable_key_rotation" {
  description = "enable_key_rotation"
  type        = bool
  default     = false
}

variable "kafka_kms_policy" {
  description = "The policy of the key usage"
  type        = any
  default     = ""
}

## Kafka Cluster

variable "kafka_tag_key" {
  type        = string
  description = "tag key for kafka resource"
  default     = "vpc"
}

variable "kafka_tag_value" {
  type        = string
  description = "kafka tag values for getting already created aws resources"
  default     = "shri"
}

variable "kafka_version" {
  type        = string
  description = "Version of Kafka"
}

variable "kafka_broker_number" {
  type        = number
  description = "Kafka brokers per zone"
}

variable "kafka_instance_type" {
  type        = string
  description = "Kafka broker instance type"
}

variable "kafka_ebs_volume_size" {
  type        = string
  description = "Kafka EBS volume size in GB"
}

variable "kafka_encryption_in_transit" {
  type        = string
  description = "Encryption setting for data in transit between clients and brokers. Valid values: TLS, TLS_PLAINTEXT, and PLAINTEXT."
}

variable "kafka_monitoring_level" {
  type        = string
  description = "property to one of three monitoring levels: DEFAULT, PER_BROKER, or PER_TOPIC_PER_BROKER"
}

variable "kafka_custom_config_auto_create_topics" {
  type        = bool
  description = "Enables topic autocreation on the server"
}

variable "kafka_custom_config_delete_topics" {
  type        = bool
  description = "Enables the delete topic operation. If this config is turned off, you can't delete a topic through the admin tool"
}

variable "kafka_custom_config_default_replication_factor" {
  type        = number
  description = "kafka custom config default replication factor value"
}

variable "kafka_custom_config_min_insync_replicas" {
  type        = number
  description = "kafka custom config min insync replicas value"
}

variable "kafka_custom_config_num_io_threads" {
  type        = number
  description = "kafka custom config num io threads value"
}

variable "kafka_custom_config_num_network_threads" {
  type        = number
  description = "kafka custom config num network threads value"
}

variable "kafka_custom_config_num_partitions" {
  type        = number
  description = "kafka custom config num partitions value"
}

variable "kafka_custom_config_num_replica_fetchers" {
  type        = number
  description = "kafka custom config num replica fetchers value"
}

variable "kafka_custom_config_socket_request_max_bytes" {
  type        = number
  description = "kafka custom config socket request max bytes value"
}

variable "kafka_custom_config_unclean_leader_election_enable" {
  type        = bool
  description = "kafka custom config unclean leader election enable, true or flase"
}

variable "kafka_custom_config_offsets_topic_replication_factor" {
  type        = number
  description = "kafka custom config offsets topic replication factor"
}

variable "enable_jmx_exporter" {
  type        = bool
  default     = false
  description = "enable monitoring form jmx exporter on broker node"
}
variable "enable_node_exporter" {
  type        = bool
  default     = false
  description = "enable monitoring form node exporter on broker node"
}

variable "enable_logging_info_cloudwatch" {
  type        = bool
  default     = false
  description = "enable logging to cloudwatch"
}

variable "cloudwatch_log_group" {
  type        = string
  default     = " "
  description = "name of log group for cloudwatch"
}

variable "enable_logging_info_firehouse" {
  type        = bool
  default     = false
  description = "enable logging to firehouse"
}

variable "firehose_delivery_stream" {
  type        = string
  default     = " "
  description = "name of firehouse delivery stream"
}

variable "enable_logging_info_s3" {
  type        = bool
  default     = false
  description = "enable logging to s3"
}

variable "s3_bucket_id" {
  type        = string
  default     = " "
  description = "s3 bucket id"
}

## msk STORAGE AUTO SCALLING

variable "enable_kafka_storage_autoscaling" {
  type = bool
  default = false
  description = "to enable auto scaling for msk cluster set it to true"
}

variable "kafka_scaling_max_capacity" {
  type = string
  default = "200"
  description = "max capacity for storage"
}

variable "kafka_scaling_target_value" {
  type = string
  default = "50"
  description = "target value for scaling"
}

variable "name_prefix" {
  type = string
  description = "name for kafka cluster"
}

variable "vpc_id" {
  type = string
  description = "vpc id for kafka"
}

variable "subnet_ids" {
  type = list(string)
  description = "subnet id for kafka"
}

variable "kafka_SG_id" {
  type = list(string)
  description = "security group id for kafka"
}


variable "enable_storage_autoscaling" {
  type = bool
  description = "enable storage autoscaling"
}

variable "tags" {
  type = map(string)
  description = "tags for msk"
}

variable "kafka_kms_key_name" {
  type = string
  description = "Name for the kms key"
}