resource "aws_sns_topic" "omni_dw_finance_errors" {
  name = var.topic_name
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_sns_topic_subscription" "omni_dw_finance_error_email_target" {
  topic_arn = aws_sns_topic.omni_dw_finance_errors.arn
  protocol  = "email"
  endpoint  = "support@bizcloudexperts.com"
}
