terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "habtamu-terraform-state-bucket-test"  # Hardcoded bucket name for test
    key            = "terraform/state/test.tfstate"          # Hardcoded state file key for test
    region         = "us-east-1"                             # Hardcoded region
    dynamodb_table = "habtamu-terraform-state-lock-test"     # Hardcoded DynamoDB table for test
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Replace with a valid AMI ID
  instance_type = "t2.micro"      # Cost-effective instance type

  tags = {
    Name = "TestInstance"
  }
}

