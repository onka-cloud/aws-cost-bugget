terraform {
  backend "s3" {
    bucket          = "tourlogic-terraform-states"
    key             = "tourlogic-aws-cost-bugget"
    profile         = "tourlogic-management"
    region          = "eu-central-1"
    dynamodb_table  = "terraform_states"
    encrypt         = true
  }
}