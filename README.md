# 🚀 Automated AWS Infrastructure Deployment with Terraform (Remote Backend) ✨

This project leverages **Terraform** to provision AWS infrastructure following **industry best practices**.  
It demonstrates a **production-ready Terraform setup** with **remote state management**, **state locking**, **modular design**, and **automated EC2 provisioning**.

The project ensures safe, repeatable, and scalable infrastructure deployment using **Infrastructure as Code (IaC)**.

---

## 🌟 Key Features

* **Infrastructure as Code (IaC) with Terraform:**  
  Define, manage, and version AWS infrastructure in a reproducible way.

* **Remote Backend Configuration:**  
  * S3 bucket for centralized Terraform state storage  
  * DynamoDB table for state locking to prevent concurrent state modifications  

* **Modular Terraform Architecture:**  
  * Reusable VPC module  
  * Reusable EC2 module  

* **Custom VPC Setup:**  
  * VPC with CIDR range  
  * Public Subnet  
  * Internet Gateway (IGW)  
  * Route Table configuration  
  * Security Group with ingress & egress rules  

* **EC2 Instance Deployment:**  
  * Multiple EC2 instances using `count`  
  * Public IP assignment  
  * Automated Apache web server installation using `user_data`  

* **Safe Destroy & Redeploy Workflow:**  
  Backend infrastructure is isolated to avoid accidental state corruption.

---

## 📂 Project Structure  

```bash

cloud-resources/
│── main.tf                     # Backend config + module wiring
│── provider.tf
│── outputs.tf
│── .gitignore
│
├── Remote-Backend/
|   ├── DynamoDB.tf            #Creates DynamoDB table
│   └── S3-Bucket.tf           #Creates S3 Bucket
|
├── VPC/
│   ├── main.tf                 # VPC, Subnet, IGW, Route Table, Security Group
│   ├── variables.tf
│
├── EC2-Instances/
│   ├── main.tf                 # EC2 instances with user_data
│   ├── variables.tf
│
├── startUpFile.sh
|
└── README.md                   # Documentation

```
---
## 🛠️ Prerequisites

Before deploying this infrastructure, ensure the following prerequisites are met:

* **Terraform**  
  Installed and available in your system PATH.

* **AWS CLI**  
  Configured with credentials that have permissions for:
  - EC2
  - VPC
  - S3
  - DynamoDB

* **AWS Account**  
  With sufficient IAM permissions to create and manage the required resources.

---

## 🔐 Remote Backend Design

Terraform state is stored remotely to ensure:

* Centralized state management
* Team collaboration
* Safe concurrent operations using state locking

### Backend Components

* **S3 Bucket** → Stores the `terraform.tfstate` file  
* **DynamoDB Table** → Provides state locking to prevent concurrent state modifications

> ⚠️ **Important:**  
> Backend infrastructure is created **once** and must **never be destroyed** with application resources.
---

## 📤 Outputs

After successful deployment, Terraform provides the following outputs:

* **VPC ID**
* **Subnet ID**
* **EC2 Instance IDs**
* **EC2 Public IP Addresses**

---

## 🔒 Best Practices Followed

This project follows industry-standard Terraform and DevOps best practices:

* Remote state stored securely in **Amazon S3**
* State locking enabled using **DynamoDB**
* Backend infrastructure isolated from application resources
* `.terraform/` directory and state files excluded from Git
* Modular and reusable Terraform code
* Automated EC2 bootstrapping using `user_data`

---

## 🎯 Key Terraform Concepts Demonstrated

* Remote backend vs local state
* State locking and concurrency control
* Terraform modules
* Resource dependency management
* `count` and output handling
* EC2 `user_data` and cloud-init
* Safe destroy and redeploy workflows

---

## 📌 Author

👤 **Akhil Kumar Khatri**  
📧 Email: **akhilkhatri2024@gmail.com**  
🌐 GitHub: **Akhil-kr-khatri**
