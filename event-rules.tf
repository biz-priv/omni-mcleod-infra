resource "aws_cloudwatch_event_rule" "omni_dw_finance_integration_error_rule" {
  name        = "omni-dw-finance-integration-error-rule"
  event_pattern = jsonencode(
    {
    "source": ["aws.glue"],
    "detail-type": ["Glue Job State Change"],
    "detail": {
        "severity": ["ERROR"],
        "state": ["FAILED", "ERROR", "STOPPED"],
        "jobName": [
            "lin-orders", 
            "lin-movement-order", 
            "lin-movement", 
            "dw-wt-interface-ar-restlet-prod",
            "dw-wt-interface-ap-restlet-prod",
            "dw-ol-interface-ar-restlet-prod",
            "dw-cw-interface-ap-restlet-prod"]
        }
    }
  )
  tags = {
    Application = "Omni DW NS Integration"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_cloudwatch_event_target" "omni_dw_integration_sns_target" {
  rule      = aws_cloudwatch_event_rule.omni_dw_finance_integration_error_rule.name
  target_id = "SendToSNS"
  arn       = "arn:aws:sns:us-east-1:332281781429:omni-finance-integration-errors"
}
