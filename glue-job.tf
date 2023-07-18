resource "aws_glue_job" "lin_orders" {
  name              = var.lin_orders_glue_job_name
  description       = "Glue Job that runs lin_orders.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.lin_orders_no_of_workers
  worker_type       = var.glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.redshift_prod_datamodel_connection_name
  execution_class   = "STANDARD"
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.lin_orders_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "wt_interface_ar_restlet" {
  name              = var.wt_interface_ar_restlet_glue_job_name
  description       = "Glue Job that runs dw-wt-interface-ar-restlet-prod.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.wt_interface_ar_restlet_no_of_workers
  worker_type       = var.wt_interface_ar_restlet_glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.omni_dw_rds_conn_name
  execution_class   = "STANDARD"
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.wt_interface_ar_restlet_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--additional-python-modules"        = var.omni_dw_pymysql_package_location
    "--ENDPOINT"                         = var.omni_dw_ssm_param_endpoint
    "--PASSWORD"                         = var.omni_dw_ssm_param_password
    "--USERNAME"                         = var.omni_dw_ssm_param_username
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "wt_interface_ap_restlet" {
  name              = var.wt_interface_ap_restlet_glue_job_name
  description       = "Glue Job that runs dw-wt-interface-ap-restlet-prod.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.wt_interface_ap_restlet_no_of_workers
  worker_type       = var.wt_interface_ap_restlet_glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.omni_dw_rds_conn_name
  execution_class   = "STANDARD"
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.wt_interface_ap_restlet_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--additional-python-modules"        = var.omni_dw_pymysql_package_location
    "--ENDPOINT"                         = var.omni_dw_ssm_param_endpoint
    "--PASSWORD"                         = var.omni_dw_ssm_param_password
    "--USERNAME"                         = var.omni_dw_ssm_param_username
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "ol_interface_ap_restlet" {
  name              = var.ol_interface_ar_restlet_glue_job_name
  description       = "Glue Job that runs dw-ol-interface-ar-restlet-prod.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.ol_interface_ar_restlet_no_of_workers
  worker_type       = var.glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.omni_dw_rds_conn_name
  execution_class   = "STANDARD"
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.ol_interface_ar_restlet_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--additional-python-modules"        = var.omni_dw_pymysql_package_location
    "--ENDPOINT"                         = var.omni_dw_ssm_param_endpoint
    "--PASSWORD"                         = var.omni_dw_ssm_param_password
    "--USERNAME"                         = var.omni_dw_ssm_param_username
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "cw_interface_ap_restlet" {
  name              = var.cw_interface_ap_restlet_prod_glue_job_name
  description       = "Glue Job that runs dw-cw-interface-ap-restlet-prod.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.cw_interface_ar_restlet_no_of_workers
  worker_type       = var.glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.omni_dw_rds_conn_name
  execution_class   = "STANDARD"
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.cw_interface_ap_restlet_prod_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--additional-python-modules"        = var.omni_dw_pymysql_package_location
    "--ENDPOINT"                         = var.omni_dw_ssm_param_endpoint
    "--PASSWORD"                         = var.omni_dw_ssm_param_password
    "--USERNAME"                         = var.omni_dw_ssm_param_username
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "lin_movement" {
  name              = var.lin_movement_glue_job_name
  description       = "Glue Job that runs lin-movement.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.lin_movement_no_of_workers
  worker_type       = var.glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.redshift_prod_datamodel_connection_name
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.lin_movement_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_job" "lin_movement-order" {
  name              = var.lin_movement_order_glue_job_name
  description       = "Glue Job that runs lin-movement-order.py PySpark script"
  role_arn          = var.glue_job_role_arn
  glue_version      = var.glue_job_version
  number_of_workers = var.lin_movement_order_no_of_workers
  worker_type       = var.glue_job_worker_type
  max_retries       = "0"
  timeout           = var.glue_job_timeout
  connections       = var.redshift_prod_datamodel_connection_name
  execution_property {
    max_concurrent_runs = var.glue_job_max_concurrent_runs
  }
  command {
    name            = "glueetl"
    script_location = "s3://${var.glue_job_script_location}/${var.lin_movement_order_glue_job_name}.py"
    python_version  = 3
  }
  default_arguments = {
    "--enable-auto-scaling"              = "true"
    "--enable-continuous-cloudwatch-log" = "true"
    "--conf"                             = var.glue_job_custom_params
    "--TempDir"                          = "s3://${var.glue_job_temp_dir}/"
    "--enable-job-insights"              = "true"
    "--job-language"                     = "python"
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
