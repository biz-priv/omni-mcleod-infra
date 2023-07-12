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
