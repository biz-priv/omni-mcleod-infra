resource "aws_ssm_parameter" "mcl_rds_master_password" {
  name  = "/omni-mcleod/${var.env}/rds/db.password"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Mcleod NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

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
