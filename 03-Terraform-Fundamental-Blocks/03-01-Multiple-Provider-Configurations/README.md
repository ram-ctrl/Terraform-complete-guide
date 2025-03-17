# Multiple Provider Configurations

## Step-01: Introduction
- Understand and Implement Multiple Provider Configurations

## Step-02: How to Define Multiple Provider Configurations of the Same Provider?
- Understand the default provider
- Define multiple provider configurations of the same provider

```hcl
# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Provider-2 for us-west-1
provider "aws" {
  region  = "us-west-1"
  profile = "default"
  alias   = "aws-west-1"
}
```

## Step-03: How to Reference the Non-Default Provider Configuration in a Resource?
```hcl
# Resource Block to Create VPC in us-west-1
resource "aws_vpc" "vpc-us-west-1" {
  cidr_block = "10.2.0.0/16"
  provider   = aws.aws-west-1
  tags = {
    "Name" = "vpc-us-west-1"
  }
}
```

## Step-04: Execute Terraform Commands
```sh
# Initialize Terraform
terraform init

# Validate Terraform Configuration Files
terraform validate

# Generate Terraform Plan
terraform plan

# Create Resources
terraform apply -auto-approve

# Verify the Same
1. Verify the VPC created in us-east-1
2. Verify the VPC created in us-west-1
```

## Step-05: Clean-Up
```sh
# Destroy Terraform Resources
terraform destroy -auto-approve

# Delete Terraform Files
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## References
- [Provider Meta Argument](https://www.terraform.io/docs/configuration/meta-arguments/resource-provider.html)

## Author
**Ramya B L**  
DevOps Engineer | Terraform Enthusiast | Cloud Practitioner


