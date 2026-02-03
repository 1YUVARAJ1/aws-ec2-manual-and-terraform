# AWS EC2 Creation — Manual & Terraform

This project demonstrates how to create and manage an **AWS EC2 instance** using:

- ✅ **Manual method (AWS Console)**
- ✅ **Infrastructure as Code using Terraform**

The goal is to understand both approaches and follow best DevOps practices, including cleanup of resources.

---

## 🛠 Tools & Technologies Used

- **AWS EC2**
- **IAM (CLI access)**
- **AWS CLI**
- **Terraform**
- **Git & GitHub**
- **VS Code**
- **Ubuntu 24.04 (EC2 instance)**

---

## 📁 Project Structure

aws-ec2-manual-and-terraform/
│
├── ec2-terraform/
│ ├── main.tf
│ ├── providers.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── terraform.tfvars.example
│
├── manual-ec2-screenshots/
│ ├── manual_ec2_instance.png
│ ├── ssh_login.png
│ ├── terraform_apply.png
│ ├── terraform_instance.png
│ ├── terraform_instance_destroy.png
│
├── .gitignore
└── README.md


---

## 🚀 Part 1: Manual EC2 Creation (AWS Console)

Steps followed:
1. Logged in to AWS Console
2. Created an EC2 instance (Ubuntu 24.04)
3. Configured key pair and security group
4. Allowed SSH (port 22)
5. Connected to the instance using SSH

📸 **Screenshot — Manual EC2 Instance**
![Manual EC2](manual-ec2-screenshots/manual_ec2_instance.png)

📸 **Screenshot — SSH Login**
![SSH Login](manual-ec2-screenshots/ssh_login.png)

---

## ⚙️ Part 2: EC2 Creation Using Terraform

Steps followed:
1. Installed Terraform and AWS CLI
2. Configured AWS CLI using IAM user credentials
3. Initialized Terraform
4. Planned and applied infrastructure
5. Verified EC2 creation
6. Connected via SSH
7. Destroyed resources to avoid charges

### Terraform Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
📸 Screenshot — Terraform Apply


📸 Screenshot — Terraform EC2 Instance


📸 Screenshot — Terraform Destroy


🔐 Security Best Practices Followed
❌ .terraform/ directory not committed

❌ terraform.tfstate not committed

❌ .pem key files not uploaded

✅ .gitignore properly configured

✅ IAM user used instead of root account

🧹 Cleanup
All Terraform-managed resources were destroyed using:

terraform destroy
This ensures no AWS resources are left running.

👤 Author
Yuvaraj N

GitHub: https://github.com/1YUVARAJ1

⭐ Outcome
✔ Learned manual vs Terraform EC2 provisioning
✔ Practiced real-world DevOps workflow
✔ Followed clean GitHub & security practices