resource "aws_glue_connection" "omni_dw_glue_connection" {
  name                          = var.omni_dw_aurora_rds_conn_name
  connection_type               = var.omni_dw_aurora_connection_type
  description                   = "This is the connection of new omni_dw PROD DB."
  connection_properties = {
    JDBC_CONNECTION_URL = "jdbc:mysql://${var.omni_dw_rds_endpoint}:${var.omni_dw_port}/${var.omni_dw_db_name}"
    PASSWORD            = data.aws_ssm_parameter.omni_dw_get_rds_master_password.value
    USERNAME            = var.omni_dw_master_username
  }
  physical_connection_requirements {
    availability_zone      = var.az
    security_group_id_list = var.omni_dw_vpc_security_group_ids
    subnet_id              = var.omni_dw_connection_subnet_id
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
