
# Variable for the AMI ID to use for the EC2 instance
variable "ami_id" {
  description = "AMI ID for the EC2 instance"  # Description of the variable
  type        = string  # Type of the variable
}

# Variable for the instance type
variable "instance_type" {
  description = "Type of EC2 instance"  # EC2 instance type
  type        = string  # Type of the variable
}

# Variable for tags to be assigned to the EC2 instance
variable "tags" {
  description = "Tags to assign to the EC2 instance"  # Tags for the instance
  type        = map(string)  # Use a map to allow multiple tags
}

