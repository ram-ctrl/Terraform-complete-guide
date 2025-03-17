# Terraform Settings Block
# Defines the required Terraform version and providers
terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

# Provider Block
# Configures the AWS provider with a specified region
provider "aws" {
  region = "us-west-1"
}

# Resource Block
# Defines an AWS EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
}

# Input Variables Block
# Allows dynamic values to be passed to Terraform configurations
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

# Output Values Block
# Displays values after resource creation, useful for retrieving details
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

# Local Values Block
# Stores intermediate values for use within the configuration
locals {
  env_prefix = "dev"
}

# Data Sources Block
# Fetches existing information from AWS (e.g., retrieving the latest AMI)
data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
}

# Modules Block
# Includes reusable infrastructure components
module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-modules-demo"
  instance_count         = 2

  ami                    = data.aws_ami.latest_amazon_linux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-08b25c5a5bf489ffa"]  # Replace with actual security group ID
  subnet_id              = "subnet-4ee95470"  # Replace with actual public subnet ID
  user_data              = file("apache-install.sh")  # Ensure this script exists in your working directory

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

