# Variable definitions for the root module

variable "ami_id" {
  description = "AMI ID for the EC2 instance"  # Specifies the Amazon Machine Image ID
  type        = string                         # Type of the variable
}

variable "instance_type" {
  description = "Type of EC2 instance"         # Specifies the instance type (e.g., t2.micro)
  type        = string                         # Type of the variable
}
