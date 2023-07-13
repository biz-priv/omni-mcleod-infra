resource "aws_rds_cluster_instance" "omni_dw_cluster_instances" {
  identifier              				  = "${aws_rds_cluster.omni_dw_rds.id}-${var.omni_dw_writer_cluster_count}"
  cluster_identifier      				  = aws_rds_cluster.omni_dw_rds.id
  instance_class          				  = var.omni_dw_instance_class
  engine                  				  = aws_rds_cluster.omni_dw_rds.engine
  engine_version          				  = aws_rds_cluster.omni_dw_rds.engine_version
  ca_cert_identifier      				  = var.omni_dw_ca_cert_identifier
  db_subnet_group_name    				  = aws_rds_cluster.omni_dw_rds.db_subnet_group_name
  publicly_accessible     				  = var.omni_dw_publicly_accessible
  promotion_tier          				  = var.omni_dw_promotion_tier
  performance_insights_enabled 			= var.omni_dw_performance_insights_enabled
  monitoring_role_arn          			= var.omni_dw_monitoring_role_arn
  monitoring_interval          			= var.omni_dw_monitoring_interval
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_rds_cluster" "omni_dw_rds" {
  cluster_identifier                = "${var.omni_dw_cluster_identifier}-${var.env}"
  engine                            = var.omni_dw_cluster_engine
  engine_version                    = var.omni_dw_engine_version
  vpc_security_group_ids            = var.omni_dw_vpc_security_group_ids
  deletion_protection               = var.omni_dw_deletion_protection
  database_name                     = "${var.omni_dw_db_name}-${var.env}"
  port                              = var.omni_dw_port
  master_username                   = var.omni_dw_master_username
  master_password                   = random_password.password.result
  backup_retention_period           = var.omni_dw_backup_retention_period
  preferred_backup_window           = var.omni_dw_preferred_backup_window
  preferred_maintenance_window      = var.omni_dw_preferred_maintenance_window
  storage_encrypted                 = var.omni_dw_storage_encrypted
  db_subnet_group_name              = aws_db_subnet_group.omni_dw_rds_subnet_group.name
  enabled_cloudwatch_logs_exports 	= var.omni_dw_enabled_cloudwatch_logs_exports
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_db_subnet_group" "omni_dw_rds_subnet_group" {
  name       							          = var.omni_dw_subnet_group_name
  subnet_ids 							          = var.omni_dw_subnet_group_id
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}