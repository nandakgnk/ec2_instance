terraform {
  backend "s3" {
    bucket         = "myownuse-terraform-state-backend"
    key            = "terraform/statefile"
    region         = "us-east-1"
    dynamodb_table = "terraform_state"
  }
}
