# Main Terraform configuration for the project

# Include the EC2 instance module
module "ec2_instance" {
  source = "./modules/ec2_instance"  # Source for the EC2 module
  
  instance_type = var.instance_type  # Pass instance type from variablescd
  # ami_id        = var.ami_id          # Pass AMI ID from variables
  tags          = "test"             # Pass tags from variables
}
