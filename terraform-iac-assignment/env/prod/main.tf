# Main Terraform configuration for the prod environment

terraform {
  backend "s3" {
    bucket         = "habtamu-terraform-state-bucket-prod"  # S3 bucket for state
    key            = "terraform.tfstate"                     # Key for the state file
    region         = "us-east-1"                             # Specify the AWS region
    dynamodb_table = "terraform-state-locks"                 # DynamoDB table for locking
  }
}

# Call the root main file
module "root" {
  source        = "../.."  # Point to the root directory
  ami_id        = var.ami_id  # Pass the ami_id variable
  instance_type = var.instance_type  # Pass the instance_type variable
}
