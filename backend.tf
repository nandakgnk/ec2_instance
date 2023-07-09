terraform {
  backend "s3" {
#    bucket         = "myownuse-terraform-state-backend"
#    key            = "terraform/statefile"
#    region         = "us-east-1"
#    dynamodb_table = "terraform_state"
   bucket         = var.east_bname
   key            = var.east_key
   region         = var.aws_region
   dynamodb_table = var.east_dyn_db

  }
}  
