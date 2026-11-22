# 🚀 AWS EKS Cluster Deployment Using Terraform

## 📌 Project Overview

This project demonstrates how to provision an Amazon Elastic Kubernetes Service (EKS) cluster on AWS using Terraform.

The main goal of this project is to automate AWS infrastructure provisioning using Infrastructure as Code (IaC).

Terraform helps manage cloud infrastructure efficiently, consistently, and automatically.

## 🛠️ Technologies Used

- AWS (Amazon Web Services)
- Amazon EKS (Elastic Kubernetes Service)
- Terraform
- Kubernetes
- AWS VPC
- Linux / Ubuntu

## 🏗️ Project Architecture

The project provisions AWS infrastructure using Terraform, including:

- AWS VPC
- Networking configuration
- Amazon EKS Cluster
- Kubernetes Add-ons

## 📂 Project Structure

```text
terraform-eks/
│
├── .gitignore
├── .terraform.lock.hcl
├── README.md
├── main.tf
├── vpc.tf
├── variables.tf
├── outputs.tf
├── providers.tf
└── versions.tf
```

*Note: Update the file structure according to your actual project.*

## ⚙️ Prerequisites

Before running this project, make sure you have:

- AWS Account
- AWS CLI installed
- Terraform installed
- kubectl installed
- AWS credentials configured

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 2. Navigate to Project Directory

```bash
cd terraform-eks
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Validate Configuration

```bash
terraform validate
```

### 5. Review Execution Plan

```bash
terraform plan
```

### 6. Deploy Infrastructure

```bash
terraform apply
```

Type `yes` to confirm deployment.

### 7. Configure kubectl

```bash
aws eks update-kubeconfig --region YOUR_REGION --name YOUR_CLUSTER_NAME
```

### 8. Verify Cluster

```bash
kubectl get nodes
```

## 🔒 Security

- Terraform state files are excluded using `.gitignore`.
- AWS credentials are not included in this repository.
- Sensitive variable files are excluded.
- `.terraform.lock.hcl` is maintained for provider version consistency.

## 🧹 Cleanup

To destroy the infrastructure when it is no longer needed:

```bash
terraform destroy
```

**Warning:** This command deletes the Terraform-managed infrastructure.

## 🎯 Learning Outcomes

Through this project, I gained practical experience with:

- Infrastructure as Code (IaC)
- AWS Cloud Infrastructure
- Amazon EKS
- Terraform configuration and deployment
- Kubernetes infrastructure
- Cloud networking

## 👨‍💻 Author

**Uzair**

BS Computer Science Student | Aspiring DevOps Engineer

Learning DevOps, Cloud Computing, Kubernetes, and Infrastructure Automation.

---

⭐ If you find this project useful, feel free to explore and connect!
