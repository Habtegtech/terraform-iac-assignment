# Variable definitions for the root configuration

variable "state_bucket_name" {
  description = "Name of the S3 bucket for storing Terraform state"  # S3 bucket name
}

variable "state_lock_table_name" {
  description = "Name of the DynamoDB table for state locking"  # DynamoDB table name
}

variable "state_key" {
  description = "Key for the state file in the S3 bucket"  # Key for the state file
}

variable "instance_type" {
  description = "Type of EC2 instance"  # Default instance type
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"  # Default AMI ID
}

variable "tags" {
  default = "test"
  description = "Tags to assign to resources"  # Tags for the resources
  type        = string
}

variable "environment" {
  description = "Environment for the configuration (e.g., dev, prod)"  # Environment name
  type        = string  # Type of the variable
}
