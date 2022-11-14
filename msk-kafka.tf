module "Kafka" {
  source                         = "git::https://github.com/OT-CLOUD-KIT/terraform-aws-msk.git?ref=v0.0.2"
  name_prefix                    = var.name_prefix
  vpc_id                         = var.vpc_id
  subnet_ids                     = var.subnet_ids
  kafka_SG_id                    = var.kafka_SG_id
  kafka_tag_value                = var.kafka_tag_value
  kafka_tag_key                  = var.kafka_tag_key
  kafka_version                  = var.kafka_version
  kafka_broker_number            = var.kafka_broker_number
  kafka_instance_type            = var.kafka_instance_type
  kafka_ebs_volume_size          = var.kafka_ebs_volume_size

## kafka monitoring
  kafka_monitoring_level         = var.kafka_monitoring_level
  enable_jmx_exporter            = var.enable_jmx_exporter
  enable_node_exporter           = var.enable_node_exporter

## kafka storage encyprtion
  kafka_encryption_in_transit    = var.kafka_encryption_in_transit

## Storage auto scaling
  enable_storage_autoscaling     = var.enable_kafka_storage_autoscaling
  scaling_max_capacity           = var.kafka_scaling_max_capacity
  scaling_target_value           = var.kafka_scaling_target_value

## kafka logging
  enable_logging_info_cloudwatch = var.enable_logging_info_cloudwatch
  cloudwatch_log_group           = var.cloudwatch_log_group
  enable_logging_info_firehouse  = var.enable_logging_info_firehouse
  firehose_delivery_stream       = var.firehose_delivery_stream
  enable_logging_info_s3         = var.enable_logging_info_s3
  s3_bucket_id                   = var.s3_bucket_id
  kafka_custom_config            = data.template_file.MskCustomConfiguration.rendered
  tags                           = var.tags

## kafka key
  create_kafka_kms_key_id        = var.create_kafka_kms_key_id
  key_usage                      = var.kafka_key_usage
  customer_master_key_spec       = var.kafka_customer_master_key_spec
  kms_policy                     = var.kafka_kms_policy
  multi_region                   = var.kafka_multi_region 
  deletion_window_in_days        = var.kafka_deletion_window_in_days
  is_enabled                     = var.kafka_is_enabled
  enable_key_rotation            = var.kafka_enable_key_rotation
  key_name                       = var.kafka_kms_key_name
  kms_key_tags                   = var.tags
}
