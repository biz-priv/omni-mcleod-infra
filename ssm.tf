resource "aws_ssm_parameter" "mcl_rds_master_username" {
  name  = "/omni-mcleod-rds-username/${var.env}"
  type  = "SecureString"
  value = random_string.username.result

  tags = {
    Application = "Mcleod NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "mcl_rds_master_password" {
  name  = "/omni-mcleod-rds-password/${var.env}"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Mcleod NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}