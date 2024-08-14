// https://github.com/boldlink/terraform-aws-budget

module "minimum_example" {
  source = "../../../ONKATEC-TEAM/MODULES/module-terraform-aws-budget"
  name              = var.name
  budget_type       = "COST"
  limit_amount      = "300"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2023-01-01_00:00"
  time_period_end   = "2023-02-28_00:00"

  notification = [
    {
      comparison_operator        = "GREATER_THAN"
      threshold                  = 50
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = var.email
    }
  ]
}