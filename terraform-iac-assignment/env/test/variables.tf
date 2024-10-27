# Variable definitions for the test environment

variable "instance_type" {
  description = "The type of instance to create"  # Description for the variable
  default     = "t2.micro"                        # Default instance type
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"  # Description for the variable
  default     = "ami-06b21ccaeff8cd686"              # Replace with your actual AMI ID
}

variable "tags" {
  description = "Tags to assign to the resources"      # Description for the variable
  type        = map(string)                            # Type definition for tags
  default     = {
    Name = "TestInstance"                             # Default tag for the instance
  }
}
