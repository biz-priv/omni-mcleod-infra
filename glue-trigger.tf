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
