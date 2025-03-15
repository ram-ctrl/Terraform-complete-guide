# Infrastructure as Code (IaC) Basics

## Overview
Infrastructure as Code (IaC) is a modern approach to managing and provisioning infrastructure through code instead of manual processes. **Terraform** is one of the most popular tools for implementing IaC, allowing teams to define infrastructure in a **declarative** way.

## What is Infrastructure as Code (IaC)?
IaC enables developers and DevOps teams to define and manage infrastructure using code. This provides several benefits:

- **Automation**: Reduces manual intervention in setting up environments.
- **Consistency**: Avoids configuration drift between environments.
- **Scalability**: Makes it easy to scale resources up or down.
- **Version Control**: Infrastructure changes can be tracked using Git.

## Why Terraform for IaC?
Terraform is an open-source tool developed by **HashiCorp** that allows you to define infrastructure as code using a simple, human-readable syntax called **HCL (HashiCorp Configuration Language).**

### Key Features of Terraform:
- **Declarative Configuration**: Define what you need, and Terraform provisions it.
- **State Management**: Keeps track of infrastructure changes.
- **Supports Multiple Providers**: Works with AWS, Azure, GCP, and more.
- **Modular Approach**: Allows reusability of infrastructure components.

## Basic Terraform Workflow
1. **Write**: Define the desired infrastructure in `.tf` files.
2. **Initialize**: Run `terraform init` to initialize Terraform.
3. **Plan**: Execute `terraform plan` to preview changes.
4. **Apply**: Deploy infrastructure using `terraform apply`.
5. **Destroy**: Remove resources with `terraform destroy`.

## Repository Structure

```plaintext
📁 terraform-iac-basics
│── 📄 README.md        # Project documentation
│── 📄 main.tf         # Core infrastructure definition
│── 📄 variables.tf    # Variable definitions
│── 📄 outputs.tf      # Outputs configuration
│── 📄 providers.tf    # Cloud provider configuration
│── 📁 modules/        # Reusable Terraform modules
│── 📁 examples/       # Example Terraform configurations
│── 📄 terraform.tfvars # User-defined variable values
│── 📄 .gitignore      # Ignores sensitive files and state files
```

## Getting Started

### Prerequisites

Before using Terraform, ensure the following are installed:

- **[Terraform](https://developer.hashicorp.com/terraform/downloads)**: Download and install Terraform.
- **Cloud Provider CLI** (AWS CLI, Azure CLI, GCP SDK, etc.)
- **Git** (for version control)

### Installation
#### **1. Install Terraform**
Follow the instructions from the [Terraform official guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

#### **2. Configure Your Cloud Provider**
For AWS:
```sh
aws configure
```
For Azure:
```sh
az login
```
For GCP:
```sh
gcloud auth login
```

## Usage
### **1. Initialize the Project**
```sh
terraform init
```

### **2. Preview the Execution Plan**
```sh
terraform plan
```

### **3. Apply the Changes**
```sh
terraform apply -auto-approve
```

### **4. Destroy the Infrastructure**
```sh
terraform destroy -auto-approve
```

## Best Practices
- Store state files in a **remote backend** (e.g., AWS S3, Terraform Cloud) to avoid conflicts.
- Use **modules** to keep configurations modular and reusable.
- Implement **secrets management** to protect sensitive information (e.g., environment variables, HashiCorp Vault).
- Regularly validate Terraform configurations using **terraform validate**.

## Resources
- [Terraform Official Documentation](https://developer.hashicorp.com/terraform/docs)
- [Best Practices for Terraform](https://developer.hashicorp.com/terraform/tutorials)

---
**Author:** Ramya B L 


