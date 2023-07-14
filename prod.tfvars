env                                    = "prod"
region                                 = "us-east-1"
aws_account_number                     = "332281781429"
kms_key_arn_for_dms                    = "arn:aws:kms:us-east-1:332281781429:key/f786e3aa-7612-40da-aafa-dd21b2ab2e1d"
replication_subnet_group_id            = "default-vpc-ed4b2288"
az                                     = "us-east-1c"
#omni_dw RDS Instance Variables
omni_dw_cluster_identifier                 = "omni-dw-prod"
omni_dw_cluster_engine                     = "aurora-mysql"
omni_dw_engine_version                     = "5.7.mysql_aurora.2.11.2"
omni_dw_vpc_security_group_ids             = ["sg-0394c6d99a53ba9a7"]
omni_dw_deletion_protection                = "true"
omni_dw_db_name                            = "dw_prod"
omni_dw_port                               = 3306
omni_dw_master_username                    = "admin"
omni_dw_backup_retention_period            = 7
omni_dw_preferred_backup_window            = "07:00-09:00"
omni_dw_preferred_maintenance_window       = "SAT:04:44-SAT:05:44"
omni_dw_storage_encrypted                  = "true"
omni_dw_subnet_group_name                  = "omni-dw-subnet-group"
omni_dw_subnet_group_id                    = ["subnet-084aa168cb004e3ed","subnet-0c0c5eb06915344a2"]
omni_dw_writer_cluster_count               = 1
omni_dw_instance_class                     = "db.r6g.xlarge"
omni_dw_ca_cert_identifier                 = "rds-ca-2019"
omni_dw_publicly_accessible                = "false"
omni_dw_promotion_tier                     = 1
omni_dw_performance_insights_enabled       = "true"
omni_dw_monitoring_role_arn                = "arn:aws:iam::332281781429:role/rds-monitoring-role"
omni_dw_monitoring_interval                = 60
omni_dw_enabled_cloudwatch_logs_exports    = ["audit","error","general","slowquery"]

#Glue Connection variables
omni_dw_aurora_rds_conn_name               = "omni_dw_prod_connection"
omni_dw_aurora_connection_type             = "JDBC"
omni_dw_rds_endpoint                       = "omni-dw-prod-1.csqnwcsrz7o6.us-east-1.rds.amazonaws.com"
omni_dw_connection_subnet_id               = "subnet-0fdad83e0911ffc41"
omni_dw_rds_conn_name                      = ["omni_dw_prod_connection"]
omni_dw_pymysql_package_location           = "s3://dw-test-etl-job/PyMySQL-1.0.3-py3-none-any.whl"

#Common Variables for Glue Job
glue_job_role_arn                      = "arn:aws:iam::332281781429:role/service-role/AWSGlueServiceRole-shipment-apar-poc"
glue_job_version                       = "3.0"
glue_job_worker_type                   = "G.1X"
glue_job_script_location               = "dw-glueetl-prod/Scripts"
glue_job_max_concurrent_runs           = 1
glue_job_custom_params                 = "spark.executor.cores=8 --conf spark.sql.shuffle.partitions=200 --conf spark.sql.legacy.parquet.datetimeRebaseModeInRead=CORRECTED --conf spark.sql.legacy.parquet.datetimeRebaseModeInWrite=CORRECTED"
glue_job_temp_dir                      = "dw-glueetl-prod/Temp"
redshift_prod_datamodel_connection_name= ["prod_datamodel"]
glue_job_timeout                       = 2880

#lin_orders GlueJob
lin_orders_glue_job_name               = "lin-orders"
lin_orders_no_of_workers               = 2

#dw-wt-interface-ar-restlet-prod glue job
wt_interface_ar_restlet_glue_job_name     = "dw-wt-interface-ar-restlet-prod"
wt_interface_ar_restlet_no_of_workers     = 40
wt_interface_ar_restlet_glue_job_worker_type = 'G.2X'

#dw-wt-interface-ap-restlet-prod glue job
wt_interface_ap_restlet_glue_job_name     = "dw-wt-interface-ap-restlet-prod"
wt_interface_ap_restlet_no_of_workers     = 20

#dw-ol-interface-ar-restlet-prod glue job
ol_interface_ar_restlet_glue_job_name     = "dw-ol-interface-ar-restlet-prod"
ol_interface_ar_restlet_no_of_workers     = 20

#dw-cw-interface-ap-restlet-prod glue job
cw_interface_ap_restlet_prod_glue_job_name= "dw-cw-interface-ap-restlet-prod"
cw_interface_ar_restlet_no_of_workers     = 10
