terraform {
  backend "s3" {
    bucket          = "onkatec-terraform-states"
    key             = "onkatec-iam-identity-center-service"
    profile         = "onkatec-prod"
    region          = "eu-central-1"
    dynamodb_table  = "terraform_states"
    encrypt         = true
  }
}