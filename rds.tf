resource "aws_rds_cluster_instance" "cluster_instances" {
  count                   = var.mcl_writer_cluster_count
  identifier              = "${aws_rds_cluster.mcleod_prod.id}-${var.mcl_writer_cluster_count}"
  cluster_identifier      = aws_rds_cluster.mcleod_prod.id
  instance_class          = var.mcl_instance_class
  engine                  = aws_rds_cluster.mcleod_prod.engine
  engine_version          = aws_rds_cluster.mcleod_prod.engine_version
  ca_cert_identifier      = var.mcl_ca_cert_identifier
  db_subnet_group_name    = aws_rds_cluster.mcleod_prod.db_subnet_group_name
  publicly_accessible     = var.mcl_publicly_accessible
  promotion_tier          = var.mcl_promotion_tier
}

resource "aws_rds_cluster" "mcleod_prod" {
  cluster_identifier                = var.mcl_cluster_identifier
  engine                            = var.mcl_cluster_engine
  engine_version                    = var.mcl_engine_version
  vpc_security_group_ids            = var.mcl_vpc_security_group_ids
  deletion_protection               = var.mcl_deletion_protection
  database_name                     = var.mcl_db_name
  port                              = var.mcl_port
  master_username                   = var.mcl_master_username
  master_password                   = var.mcl_master_password
  backup_retention_period           = var.mcl_backup_retention_period
  preferred_backup_window           = var.mcl_preferred_backup_window
  preferred_maintenance_window      = var.mcl_preferred_maintenance_window
  storage_encrypted                 = var.mcl_storage_encrypted
  db_subnet_group_name              = aws_db_subnet_group.mcl_prod_subnet_group.name
}

resource "aws_db_subnet_group" "mcl_prod_subnet_group" {
  name       = var.mcl_subnet_group_name
  subnet_ids = var.mcl_subnet_group_id
}