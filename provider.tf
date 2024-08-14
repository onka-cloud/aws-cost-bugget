provider "aws" {
  profile = "${var.company}-${var.env}"
  region  = var.region
}