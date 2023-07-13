variable "env" {
  type     = string
  nullable = false
}

variable "region" {
  type     = string
  nullable = false
}

variable "aws_account_number" {
  type     = string
  nullable = false
}

variable "kms_key_arn_for_dms" {
  type     = string
  nullable = false
}

variable "replication_subnet_group_id" {
  type     = string
  nullable = false
}
variable "omni_dw_cluster_identifier" {
  type     = string
  nullable = false
}

variable "omni_dw_cluster_engine" {
  type     = string
  nullable = false
}

variable "omni_dw_engine_version" {
  type     = string
  nullable = false
}

variable "omni_dw_vpc_security_group_ids" {
  type     = list(any)
  nullable = false
}

variable "omni_dw_deletion_protection" {
  type     = string
  nullable = false
}

variable "omni_dw_db_name" {
  type     = string
  nullable = false
}

variable "omni_dw_port" {
  type     = string
  nullable = false
}

variable "omni_dw_master_username" {
  type     = string
  nullable = false
}

variable "omni_dw_backup_retention_period" {
  type     = string
  nullable = false
}

variable "omni_dw_preferred_backup_window" {
  type     = string
  nullable = false
}

variable "omni_dw_preferred_maintenance_window" {
  type     = string
  nullable = false
}

variable "omni_dw_storage_encrypted" {
  type     = string
  nullable = false
}

variable "omni_dw_subnet_group_name" {
  type     = string
  nullable = false
}
variable "omni_dw_subnet_group_id" {
  type     = list(any)
  nullable = false
}

variable "omni_dw_writer_cluster_count" {
  type     = string
  nullable = false
}

variable "omni_dw_instance_class" {
  type     = string
  nullable = false
}

variable "omni_dw_ca_cert_identifier" {
  type     = string
  nullable = false
}

variable "omni_dw_publicly_accessible" {
  type     = string
  nullable = false
}

variable "omni_dw_promotion_tier" {
  type     = string
  nullable = false
}

variable "omni_dw_performance_insights_enabled" {
  type     = string
  nullable = false
}

variable "omni_dw_monitoring_role_arn" {
  type     = string
  nullable = false
}

variable "omni_dw_monitoring_interval" {
  type     = string
  nullable = false
}

variable "omni_dw_enabled_cloudwatch_logs_exports" {
  type     = list(any)
  nullable = false
}

variable "lin_orders_glue_job_name" {
  type     = string
  nullable = false
}

variable "glue_job_role_arn" {
  type     = string
  nullable = false
}

variable "glue_job_version" {
  type     = string
  nullable = false
}

variable "lin_orders_no_of_workers" {
  type     = string
  nullable = false
}

variable "glue_job_script_location" {
  type     = string
  nullable = false
}

variable "redshift_prod_datamodel_connection_name" {
  type     = list(any)
  nullable = false
}

variable "glue_job_max_concurrent_runs" {
  type     = string
  nullable = false
}

variable "glue_job_custom_params" {
  type     = string
  nullable = false
}

variable "glue_job_temp_dir" {
  type     = string
  nullable = false
}

variable "glue_job_timeout" {
  type     = string
  nullable = false
}

variable "glue_job_worker_type" {
  type     = string
  nullable = false
}

variable "omni_dw_aurora_rds_conn_name" {
  type     = string
  nullable = false
}

variable "omni_dw_aurora_connection_type" {
  type     = string
  nullable = false
}

variable "omni_dw_rds_endpoint" {
  type     = string
  nullable = false
}

variable "az" {
  type     = string
  nullable = false
}

variable "omni_dw_connection_subnet_id" {
  type     = string
  nullable = false
}
