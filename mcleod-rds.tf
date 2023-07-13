# resource "aws_rds_cluster_instance" "cluster_instances" {
#   identifier              				  = "${aws_rds_cluster.mcleod_rds.id}-${var.mcl_writer_cluster_count}"
#   cluster_identifier      				  = aws_rds_cluster.mcleod_rds.id
#   instance_class          				  = var.mcl_instance_class
#   engine                  				  = aws_rds_cluster.mcleod_rds.engine
#   engine_version          				  = aws_rds_cluster.mcleod_rds.engine_version
#   ca_cert_identifier      				  = var.mcl_ca_cert_identifier
#   db_subnet_group_name    				  = aws_rds_cluster.mcleod_rds.db_subnet_group_name
#   publicly_accessible     				  = var.mcl_publicly_accessible
#   promotion_tier          				  = var.mcl_promotion_tier
#   performance_insights_enabled 			= var.mcl_performance_insights_enabled
#   monitoring_role_arn          			= var.mcl_monitoring_role_arn
#   monitoring_interval          			= var.mcl_monitoring_interval
#   tags = {
#     Application = "Mcleod NS Integration"
#     CreatedBy   = "BizCloudExperts"
#     Environment = var.env
#     STAGE       = var.env
#   }
# }

# resource "aws_rds_cluster" "mcleod_rds" {
#   cluster_identifier                = var.mcl_cluster_identifier
#   engine                            = var.mcl_cluster_engine
#   engine_version                    = var.mcl_engine_version
#   vpc_security_group_ids            = var.mcl_vpc_security_group_ids
#   deletion_protection               = var.mcl_deletion_protection
#   database_name                     = var.mcl_db_name
#   port                              = var.mcl_port
#   master_username                   = var.mcl_master_username
#   master_password                   = random_password.password.result
#   backup_retention_period           = var.mcl_backup_retention_period
#   preferred_backup_window           = var.mcl_preferred_backup_window
#   preferred_maintenance_window      = var.mcl_preferred_maintenance_window
#   storage_encrypted                 = var.mcl_storage_encrypted
#   db_subnet_group_name              = aws_db_subnet_group.mcleod_rds_subnet_group.name
#   enabled_cloudwatch_logs_exports 	= var.mcl_enabled_cloudwatch_logs_exports
#   tags = {
#     Application = "Mcleod NS Integration"
#     CreatedBy   = "BizCloudExperts"
#     Environment = var.env
#     STAGE       = var.env
#   }
# }

# resource "aws_db_subnet_group" "mcleod_rds_subnet_group" {
#   name       							          = var.mcl_subnet_group_name
#   subnet_ids 							          = var.mcl_subnet_group_id
#   tags = {
#     Application = "Mcleod NS Integration"
#     CreatedBy   = "BizCloudExperts"
#     Environment = var.env
#     STAGE       = var.env
#   }
# }