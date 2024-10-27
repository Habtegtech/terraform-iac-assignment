# Variable definitions for the EC2 instance module

# variable "ami_id" {
#   description = "AMI ID for the EC2 instance"  # AMI ID for the instance
#   type        = string  # Type of the variable
# }

variable "instance_type" {
  description = "Type of EC2 instance"  # EC2 instance type
  type        = string  # Type of the variable
}

variable "tags" {
  description = "Tags to assign to the EC2 instance"  # Tags for the instance
  type        = string
}
