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

resource "aws_ssm_parameter" "omni_dw_finance_user" {
  name  = "/omni-mcleod-finance/${var.env}/db/user"
  type  = "SecureString"
  value = var.omni_dw_master_username

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_finance_password" {
  name  = "/omni-mcleod-finance/${var.env}/db/password"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_finance_db_name" {
  name  = "/omni-mcleod-finance/${var.env}/db/name"
  type  = "SecureString"
  value = var.omni_dw_db_name

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_finance_db_host" {
  name  = "/omni-mcleod-finance/${var.env}/db/host"
  type  = "SecureString"
  value = var.omni_dw_rds_endpoint

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_dw_finance_db_port" {
  name  = "/omni-mcleod-finance/${var.env}/db/port"
  type  = "SecureString"
  value = var.omni_dw_port

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_customer_key" {
  name  = "/omni-dw/prod/netsuitMCL/authConfig/consumerKey"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_customer_secret" {
  name  = "/omni-dw/prod/netsuitMCL/authConfig/consumerSecret"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_token_key" {
  name  = "/omni-dw/prod/netsuitMCL/authConfig/tokenKeyMCL"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_token_secret" {
  name  = "/omni-dw/prod/netsuitMCL/authConfig/tokenSecretMCL"
  type  = "SecureString"
  value = random_password.password.result

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
