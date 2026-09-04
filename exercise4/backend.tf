terraform {
  backend "s3" {
    bucket = "devops-2026-19"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
