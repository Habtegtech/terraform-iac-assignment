# Variable definitions for the development environment

variable "instance_type" {
  description = "Type of EC2 instance"  # Default instance type for the dev environment
  type        = string  # Type of the variable
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"  # Default AMI ID for the dev environment
  type        = string  # Type of the variable
}
variable "state_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "environment" {
  description = "The environment (dev or prod)"
  type        = string
}

variable "tags" {
  description = "Tags to assign to resources"  # Tags for the resources
  type        = map(string)  # Type of the variable
}
