# Installation Guide: Terraform CLI, AWS CLI, and VS Code IDE

## 1️⃣ Install Terraform CLI
### Windows:
1. Download Terraform from the [official site](https://developer.hashicorp.com/terraform/downloads).
2. Extract the downloaded file and add it to the system PATH.
3. Verify installation:
```bash
terraform -v
```

### macOS:
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
terraform -v
```

## 2️⃣ Install AWS CLI
### Windows:
1. Download AWS CLI from the [official site](https://aws.amazon.com/cli/).
2. Install and verify:
```bash
aws --version
```

### macOS:
```bash
brew install awscli
aws --version
```

## 3️⃣ Install VS Code IDE
1. Download VS Code from the [official site](https://code.visualstudio.com/).
2. Install necessary extensions:
   - **Terraform** (HashiCorp Terraform)
   - **AWS Toolkit** (for AWS integration)

## 4️⃣ AWS Authentication Setup
Once Terraform is installed, configure authentication for AWS:

### Using Access Key & Secret Key:
```bash
aws configure
```
Enter the following details when prompted:
- AWS Access Key ID
- AWS Secret Access Key
- Default region name (e.g., us-east-1)
- Default output format (json, table, or text)

To verify authentication:
```bash
aws sts get-caller-identity
```

## 5️⃣ GCP Authentication Setup
For Google Cloud, authentication requires a service account key:
1. Create a service account in Google Cloud Console.
2. Generate a JSON key file.
3. Authenticate using:
   ```bash
   gcloud auth activate-service-account --key-file=<your-key-file>.json
   ```
4. Set the default project:
   ```bash
   gcloud config set project <your-project-id>
   ```

## Manual Installation for macOS & Windows
### macOS:
```bash
# Create a folder for Terraform installation
mkdir /Users/<YOUR-USER>/Documents/terraform-install

# Copy the package to "terraform-install" folder
cp <PACKAGE-NAME> /Users/<YOUR-USER>/Documents/terraform-install

# Unzip the package
unzip terraform_0.14.3_darwin_amd64.zip

# Move Terraform binary to /usr/local/bin
mv terraform /usr/local/bin

# Verify installation
terraform version
```

### Windows:
1. Download Terraform zip file.
2. Extract the zip file.
3. Move `terraform.exe` to `C:\Windows\System32`.
4. Verify installation:
```bash
terraform version
```

## Author
**Written by:** Ramya B L  
**All rights reserved.**

