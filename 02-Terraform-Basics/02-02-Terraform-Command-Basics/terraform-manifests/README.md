# Terraform Manifest Overview

A Terraform manifest is a configuration file written in HCL (HashiCorp Configuration Language) that defines the desired state of your infrastructure. It contains resources, providers, variables, and modules to provision infrastructure as code (IaC).

## Key Components of a Terraform Manifest

### Providers
Specify the cloud or service provider (e.g., AWS, GCP, Azure).
```hcl
provider "aws" {
  region = "us-west-1"
}
```

### Resources
Define the infrastructure components like VMs, databases, networks, etc.
```hcl
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```

### Variables
Store configurable values for reuse.
```hcl
variable "instance_type" {
  default = "t2.micro"
}
```

### Outputs
Provide information after resource creation.
```hcl
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

### Modules
Reusable groups of Terraform code for modular infrastructure.
```hcl
module "vpc" {
  source = "./modules/vpc"
}
```

## Why is a Terraform Manifest Important?
✅ Automates infrastructure provisioning
✅ Ensures consistency and version control
✅ Improves collaboration through IaC
✅ Enables easy scaling and management

