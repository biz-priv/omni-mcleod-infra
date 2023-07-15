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
  name  = "/omni-dw/${var.env}/netsuitMCL/authConfig/consumerKey"
  type  = "SecureString"
  value = "dc5a854e86c5bd48417c26ec1287cb5577f19d147acb48415e95ceb475ce04a5"

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_customer_secret" {
  name  = "/omni-dw/${var.env}/netsuitMCL/authConfig/consumerSecret"
  type  = "SecureString"
  value = "4c53c17215ace3a0d0cb2530685c3609488ab7b8a2e3c3c0fe499779bd6c108a"

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_token_key" {
  name  = "/omni-dw/${var.env}/netsuitMCL/authConfig/tokenKeyMCL"
  type  = "SecureString"
  value = "57c7ad8e5b88cdf0f4614066cc17822c3e57b5cfa596e54b6bbfa2dc2f7c4c4b"

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni_ns_mcl_token_secret" {
  name  = "/omni-dw/${var.env}/netsuitMCL/authConfig/tokenSecretMCL"
  type  = "SecureString"
  value = "35b585473e5352b8120c7da0865fc6e4c3315a91e96458296fb091c35f2d4d81"

  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
