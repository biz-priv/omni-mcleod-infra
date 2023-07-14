variable "env" {
  type     = string
}

variable "region" {
  type     = string
}

variable "aws_account_number" {
  type     = string
}

variable "kms_key_arn_for_dms" {
  type     = string 
}

variable "replication_subnet_group_id" {
  type     = string
}
variable "omni_dw_cluster_identifier" {
  type     = string
}

variable "omni_dw_cluster_engine" {
  type     = string
}

variable "omni_dw_engine_version" {
  type     = string
}

variable "omni_dw_vpc_security_group_ids" {
  type     = list(any)
}

variable "omni_dw_deletion_protection" {
  type     = string 
}

variable "omni_dw_db_name" {
  type     = string 
}

variable "omni_dw_port" {
  type     = string
}

variable "omni_dw_master_username" {
  type     = string
}

variable "omni_dw_backup_retention_period" {
  type     = string
}

variable "omni_dw_preferred_backup_window" {
  type     = string
}

variable "omni_dw_preferred_maintenance_window" {
  type     = string
}

variable "omni_dw_storage_encrypted" {
  type     = string
}

variable "omni_dw_subnet_group_name" {
  type     = string
}

variable "omni_dw_subnet_group_id" {
  type     = list(any)
}

variable "omni_dw_writer_cluster_count" {
  type     = string
}

variable "omni_dw_instance_class" {
  type     = string
}

variable "omni_dw_ca_cert_identifier" {
  type     = string
}

variable "omni_dw_publicly_accessible" {
  type     = string
}

variable "omni_dw_promotion_tier" {
  type     = string
}

variable "omni_dw_performance_insights_enabled" {
  type     = string
}

variable "omni_dw_monitoring_role_arn" {
  type     = string
}

variable "omni_dw_monitoring_interval" {
  type     = string 
}

variable "omni_dw_enabled_cloudwatch_logs_exports" {
  type     = list(any) 
}

variable "lin_orders_glue_job_name" {
  type     = string
}

variable "glue_job_role_arn" {
  type     = string
}

variable "glue_job_version" {
  type     = string
}

variable "lin_orders_no_of_workers" {
  type     = string
}

variable "glue_job_script_location" {
  type     = string
}

variable "redshift_prod_datamodel_connection_name" {
  type     = list(any)
}

variable "glue_job_max_concurrent_runs" {
  type     = string
}

variable "glue_job_custom_params" {
  type     = string
}

variable "glue_job_temp_dir" {
  type     = string
}

variable "glue_job_timeout" {
  type     = string
}

variable "glue_job_worker_type" {
  type     = string
}

variable "omni_dw_aurora_rds_conn_name" {
  type     = string
}

variable "omni_dw_aurora_connection_type" {
  type     = string
}

variable "omni_dw_rds_endpoint" {
  type     = string
}

variable "az" {
  type     = string
}

variable "omni_dw_connection_subnet_id" {
  type     = string
}

variable "wt_interface_ar_restlet_glue_job_name" {
  type     = string
}

variable "wt_interface_ap_restlet_glue_job_name" {
  type     = string
}

variable "ol_interface_ar_restlet_glue_job_name" {
  type     = string
}

variable "cw_interface_ap_restlet_prod_glue_job_name" {
  type     = string
}

variable "omni_dw_rds_conn_name" {
  type     = list(any)
}

variable "omni_dw_pymysql_package_location" {
  type     = string
}
