terraform {
  backend "s3" {
#    bucket         = "myownuse-terraform-state-backend"
#    key            = "terraform/statefile"
#    region         = "us-east-1"
#    dynamodb_table = "terraform_state"
   bucket         = var.east_bname"myownuse-terraform-state-backend"
   key            = var.east_key" terraform/statefile"
   region         = var.aws_region
   dynamodb_table = var.dyn_db "terraform_state"

  }
}  
