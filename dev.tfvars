env                                    = "dev"
region                                 = "us-east-1"
aws_account_number                     = "332281781429"
kms_key_arn_for_dms                    = "arn:aws:kms:us-east-1:332281781429:key/f786e3aa-7612-40da-aafa-dd21b2ab2e1d"
replication_subnet_group_id            = "default-vpc-ed4b2288"
#MCL RDS Instance Variables
mcl_cluster_identifier                 = "mcleod-dev"
mcl_cluster_engine                     = "aurora-mysql"
mcl_engine_version                     = "5.7.mysql_aurora.2.11.2"
mcl_vpc_security_group_ids             = ["sg-0394c6d99a53ba9a7"]
mcl_deletion_protection                = "true"
mcl_db_name                            = "dw_dev"
mcl_port                               = 3306
mcl_master_username                    = "admin"
mcl_backup_retention_period            = 7
mcl_preferred_backup_window            = "07:00-09:00"
mcl_preferred_maintenance_window       = "SAT:04:44-SAT:05:44"
mcl_storage_encrypted                  = "true"
mcl_subnet_group_name                  = "rds-subnet-group"
mcl_subnet_group_id                    = ["subnet-49dd4b12","subnet-28d49861"]
mcl_writer_cluster_count               = 1
mcl_instance_class                     = "db.r6g.xlarge"
mcl_ca_cert_identifier                 = "rds-ca-2019"
mcl_publicly_accessible                = "true"
mcl_promotion_tier                     = 1
mcl_performance_insights_enabled       = "true"
mcl_monitoring_role_arn                = "arn:aws:iam::332281781429:role/rds-monitoring-role"
mcl_monitoring_interval                = 60
mcl_enabled_cloudwatch_logs_exports    = ["audit","error","general","slowquery"]

#Common Variables for Glue Job
glue_job_role_arn                      = "arn:aws:iam::332281781429:role/service-role/AWSGlueServiceRole-shipment-apar-poc"
glue_job_version                       = "3.0"
glue_job_worker_type                   = "G.1X"
glue_job_script_location               = "dw-glueetl-dev/Scripts"
glue_job_max_concurrent_runs           = 1
glue_job_custom_params                 = "spark.executor.cores=8 --conf spark.sql.shuffle.partitions=200 --conf spark.sql.legacy.parquet.datetimeRebaseModeInRead=CORRECTED --conf spark.sql.legacy.parquet.datetimeRebaseModeInWrite=CORRECTED"
glue_job_temp_dir                      = "dw-glueetl-dev/Temp"
redshift_prod_datamodel_connection_name= ["prod_datamodel"]
glue_job_timeout                       = 2880

#lin_orders GlueJob
lin_orders_glue_job_name               = "lin_orders"
lin_orders_no_of_workers               = 2