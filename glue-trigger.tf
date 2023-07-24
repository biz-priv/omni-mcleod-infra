resource "aws_glue_trigger" "lin_order_trigger" {
  name     = "${var.lin_orders_glue_job_name}-trigger"
  schedule = var.glue_trigger_lin_cron_expression
  type     = "SCHEDULED"

  actions {
    job_name = var.lin_orders_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "lin_movement_trigger" {
  name     = "${var.lin_movement_glue_job_name}-trigger"
  schedule = var.glue_trigger_lin_cron_expression
  type     = "SCHEDULED"

  actions {
    job_name = var.lin_movement_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "lin_movement_order_trigger" {
  name     = "${var.lin_movement_order_glue_job_name}-trigger"
  schedule = var.glue_trigger_lin_cron_expression
  type     = "SCHEDULED"

  actions {
    job_name = var.lin_movement_order_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "wt_interface_ar_restlet_trigger" {
  name     = "${var.wt_interface_ar_restlet_glue_job_name}-trigger"
  schedule = "cron(00 06 * * ? *)"
  type     = "SCHEDULED"

  actions {
    job_name = var.wt_interface_ar_restlet_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "wt_interface_ap_restlet_trigger" {
  name     = "${var.wt_interface_ap_restlet_glue_job_name}-trigger"
  schedule = "cron(30 12,17,22 * * ? *)"
  type     = "SCHEDULED"

  actions {
    job_name = var.wt_interface_ap_restlet_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "ol_interface_ar_restlet_trigger" {
  name     = "${var.ol_interface_ar_restlet_glue_job_name}-trigger"
  type     = "ON_DEMAND"

  actions {
    job_name = var.ol_interface_ar_restlet_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_glue_trigger" "cw_interface_ap_restlet_trigger" {
  name     = "${var.cw_interface_ap_restlet_prod_glue_job_name}-trigger"
  type     = "ON_DEMAND"

  actions {
    job_name = var.cw_interface_ap_restlet_prod_glue_job_name
  }
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}
