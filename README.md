# AWS Infrastructure using Terraform

## 🚀 Overview
This project sets up a robust AWS infrastructure using **Terraform**, enabling a scalable and secure cloud environment. The architecture includes VPC, EC2 instances, MySQL databases, and secure networking configurations.


![image](https://github.com/user-attachments/assets/3c4690fe-b14b-453b-b562-9fb92957f733)


## 🛠️ Architecture Diagram
![Architecture Diagram](path_to_your_diagram.png)

### Key Components:
- **VPC**: Isolated network environment.
- **EC2 Instances**: Web servers hosted in public subnets.
- **RDS (MySQL)**: Managed database service.
- **Security Groups**: Control inbound and outbound traffic.
- **Load Balancer**: Distributes traffic across EC2 instances.

## 📑 Prerequisites
- AWS Account
- Terraform installed
- AWS CLI configured

## ⚙️ Setup and Deployment

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Ravikiran-goud/AWS_Infrastructure_using-_terraform.git
   cd AWS_Infrastructure_using-_terraform
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Plan Infrastructure:**
   ```bash
   terraform plan
   ```

4. **Apply Changes:**
   ```bash
   terraform apply
   ```

5. **Destroy Infrastructure (if needed):**
   ```bash
   terraform destroy
   ```

## 🔑 Variables
Update the `variables.tf` file with your AWS details:
```hcl
variable "cidr" {
  default = "10.0.0.0/16"
}
variable "region" {
  default = "us-east-1"
}
```

## 📂 Project Structure
```
├── main.tf       # Main Terraform configuration
├── variables.tf  # Input variables
├── useddata.sh    # User data values
├── README.md     # Documentation
```

## ✅ Best Practices Followed
- State Management using AWS S3
- IAM Role-based access control
- Secure handling of credentials

## 🧑‍💻 Author
**Ravi Kiran Goud Jaggari**

## 🤝 Contributions
Contributions are welcome! Open a PR or raise an issue.

---
Feel free to contact me via [goud.jaggari@gmail.com](mailto:jaggar01@pfw.edu) for further queries.

Happy Terraforming! 🚀
