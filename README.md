# Terraform AWS EC2 + IAM Role + S3 Bucket Project

## 📌 Project Overview

This project demonstrates how to provision AWS infrastructure using **Terraform**.

The infrastructure created includes:

* EC2 Instance
* S3 Bucket
* IAM Role
* IAM Instance Profile
* EC2 attachment to IAM Role
* User Data support
* Outputs for important resources

The EC2 instance receives an IAM Role that allows it to securely access the S3 bucket without storing AWS Access Keys on the server.

---

## 🏗️ Project Architecture

```
                    Terraform
                        │
                        ▼
        ┌─────────────────────────────────┐
        │                                 │
        │  AWS Infrastructure             │
        │                                 │
        │  ┌──────────────┐               │
        │  │  EC2 Instance│──────────────┐│
        │  └──────────────┘              ││
        │         │                      ││
        │         ▼                      ││
        │ IAM Instance Profile           ││
        │         │                      ││
        │         ▼                      ││
        │      IAM Role                  ││
        │         │                      ││
        │         ▼                      ││
        │      S3 Bucket ◄───────────────┘│
        │                                 │
        └─────────────────────────────────┘
```

---

# 📁 Project Structure

```
terraform-s3-ec2-project/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── iam.tf
├── s3.tf
├── main.tf
├── outputs.tf
├── userdata.sh
└── README.md
```

---

# ⚙️ Terraform Files

## provider.tf

Configures:

* Terraform version
* AWS Provider
* AWS Region

---

## variables.tf

Contains reusable variables such as:

* AWS Region
* AMI ID
* Instance Type
* Key Pair
* Bucket Name
* IAM Role Name
* IAM Instance Profile
* EC2 Name

---

## terraform.tfvars

Stores environment-specific values.

Example:

```
aws_region = "ap-south-1"

instance_type = "t2.micro"

key_name = "my-key"

bucket_name = "suraj-demo-bucket"

instance_name = "Terraform-EC2"
```

---

## iam.tf

Creates:

* IAM Role
* IAM Policy
* IAM Role Policy Attachment
* IAM Instance Profile

The IAM Role is attached to the EC2 instance using the Instance Profile.

---

## s3.tf

Creates an S3 bucket.

Example resource:

```
resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name
}
```

---

## main.tf

Creates an EC2 instance with:

* Amazon Linux AMI
* Key Pair
* IAM Instance Profile
* User Data
* Instance Tags

---

## outputs.tf

Displays useful information after deployment.

Outputs include:

* Instance ID
* Public IP
* Private IP
* Bucket Name
* IAM Role Name
* IAM Instance Profile

---

# 🚀 Deployment Steps

## 1. Clone Repository

```
git clone https://github.com/<your-github-username>/terraform-s3-ec2-project.git

cd terraform-s3-ec2-project
```

---

## 2. Initialize Terraform

```
terraform init
```

---

## 3. Validate Configuration

```
terraform validate
```

---

## 4. Review Execution Plan

```
terraform plan
```

---

## 5. Deploy Infrastructure

```
terraform apply
```

Type:

```
yes
```

---

## 6. Destroy Infrastructure

```
terraform destroy
```

---

# 📤 Expected Outputs

```
instance_id

public_ip

private_ip

bucket_name

iam_role

instance_profile
```

---

# 🛠 Technologies Used

* Terraform
* AWS EC2
* AWS IAM
* AWS S3
* Amazon Linux
* IAM Instance Profile

---

# 📚 Learning Objectives

This project helps understand:

* Terraform project structure
* Variables and Outputs
* AWS Provider configuration
* EC2 provisioning
* IAM Role creation
* IAM Instance Profile attachment
* S3 Bucket creation
* Secure access to AWS services using IAM Roles
* Infrastructure as Code (IaC) best practices

---

# 📌 Future Improvements

* Create custom VPC
* Public and Private Subnets
* Internet Gateway
* Route Tables
* Security Groups
* Elastic IP
* EBS Volumes
* Auto Scaling Group
* Application Load Balancer
* CloudWatch Monitoring
* Remote Backend using S3
* DynamoDB State Locking
* CI/CD Pipeline using GitHub Actions

---

# 👨‍💻 Author

**Suraj**

AWS | Terraform | Linux | Docker | Kubernetes | Jenkins | Ansible | DevOps

If you found this project useful, feel free to ⭐ the repository.
