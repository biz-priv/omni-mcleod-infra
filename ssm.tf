resource "aws_ssm_parameter" "omni_dw_rds_master_password" {
  name  = "/omni-dw/${var.env}/rds/db.password"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_rds_master_username" {
  name  = "/omni-dw/${var.env}/rds/db.username"
  type  = "SecureString"
  value = var.omni_dw_master_username

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_rds_master_endpoint_ip" {
  name  = "/omni-dw/${var.env}/rds/db.endpoint.ip"
  type  = "SecureString"
  value = var.omni_dw_rds_endpoint

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
