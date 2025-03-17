# Terraform Command Guide

## Overview
This guide covers essential Terraform commands and steps to provision an EC2 instance on AWS.

## Step 1: Understanding Key Terraform Commands
1. `terraform init` – Initializes the Terraform working directory.
2. `terraform validate` – Checks the configuration files for syntax errors.
3. `terraform plan` – Previews the execution plan before applying changes.
4. `terraform apply` – Deploys the defined infrastructure.
5. `terraform destroy` – Removes all managed resources.

## Step 2: Terraform Configuration for an EC2 Instance
### **Prerequisites**
1. Ensure **default VPC** is available in the selected AWS region.
2. Use a valid AMI ID that corresponds to your region.
3. Verify AWS credentials are configured correctly in `~/.aws/credentials`.

### **Terraform Configuration File (ec2.tf)**
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Specify provider version if necessary
    }
  }
}

provider "aws" {
  profile = "default" # Uses AWS credentials configured locally
  region  = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-04d29b6f966df1537" # Amazon Linux AMI in us-east-1
  instance_type = "t2.micro"
}
```

## Step 3: Running Terraform Commands
```sh
# Step 3.1: Initialize the working directory
terraform init

# Step 3.2: Validate the configuration files
terraform validate

# Step 3.3: Preview the execution plan
terraform plan

# Step 3.4: Deploy the EC2 instance
terraform apply
```

## Step 4: Verifying the EC2 Instance
- Log in to AWS Console.
- Navigate to **EC2 Dashboard**.
- Locate the instance and check its status.

## Step 5: Cleaning Up Resources
```sh
# Step 5.1: Destroy the EC2 instance
terraform destroy

# Step 5.2: Remove Terraform-related files
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## Conclusion
This guide covered:
- Essential Terraform commands.
- Writing a Terraform manifest for an AWS EC2 instance.
- Initializing, validating, planning, applying, and destroying resources with Terraform.
- 
## Author : Ramya B L

