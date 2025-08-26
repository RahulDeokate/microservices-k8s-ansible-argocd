# 🚀 Microservices DevOps Infra with Ansible & ArgoCD

This repository contains a **production-style DevOps project** that provisions cloud infrastructure, configures Kubernetes clusters, and automates Continuous Delivery (CD) of a **microservices application** (frontend + backend).  
It demonstrates real-world usage of **Terraform, Ansible, Kubernetes, and ArgoCD** for deploying containerized applications.

---

## 📌 Project Overview

- **Infrastructure** → Provisioned using **Terraform** (modular approach).  
- **Configuration Management** → Automated with **Ansible**.  
- **Deployment** → Kubernetes manifests managed via **ArgoCD GitOps workflow**.  
- **Application** → Two microservices:
  - `frontend` → React-based UI
  - `backend` → Node.js API service
- **Workflow** → Application code lives in a **separate repo**, this repo manages **infrastructure + deployment**.

---

## 🏗️ Architecture

```text
                ┌────────────────────┐
                │   Terraform (IaC)  │
                │  Provisions Infra  │
                └─────────┬──────────┘
                          │
                ┌─────────▼──────────┐
                │  Ansible Playbooks │
                │ Configures Cluster │
                └─────────┬──────────┘
                          │
                ┌─────────▼──────────┐
                │   Kubernetes (EKS) │
                │   + ArgoCD (CD)    │
                └─────────┬──────────┘
                          │
        ┌─────────────────▼──────────────────┐
        │   Microservices (Frontend + Backend)│
        │  Deployed via GitOps (separate repo)│
        └─────────────────────────────────────┘
📂 Repository Structure

microservices-devops-infra-cd/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│       ├── vpc/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── eks/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       └── security-groups/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
│
├── ansible/
│   ├── inventory/
│   │   └── hosts.ini
│   ├── roles/
│   │   ├── common/
│   │   │   └── tasks/main.yml
│   │   ├── docker/
│   │   │   └── tasks/main.yml
│   │   └── kubernetes/
│   │       └── tasks/main.yml
│   └── playbook.yml
│
├── kubernetes/
│   ├── base/
│   │   ├── frontend-deployment.yaml
│   │   ├── frontend-service.yaml
│   │   ├── backend-deployment.yaml
│   │   ├── backend-service.yaml
│   │   └── namespace.yaml
│   └── argocd/
│       ├── frontend-app.yaml
│       ├── backend-app.yaml
│       └── project.yaml
│
└── README.md

⚙️ Tech Stack

Terraform → Infrastructure as Code (AWS VPC, EKS, Security Groups)

Ansible → Cluster bootstrapping & configuration

Kubernetes (EKS) → Orchestrating microservices

ArgoCD → GitOps-based Continuous Delivery

Microservices App → React (frontend) + Node.js (backend)

🚀 Deployment Workflow

Provision Infra → terraform apply (creates VPC, EKS, Security Groups).

Configure Cluster → Run ansible-playbook playbook.yml (installs Docker, K8s tools).

Deploy Microservices → ArgoCD syncs Kubernetes manifests from this repo.

Application Live 🎉 → Access frontend → interacts with backend → serves data via REST API.

📖 How to Use
# Clone repo
git clone https://github.com/<your-username>/microservices-devops-infra-cd.git
cd microservices-devops-infra-cd

# Provision infrastructure
cd terraform
terraform init
terraform apply

# Configure cluster
cd ../ansible
ansible-playbook -i inventory/hosts.ini playbook.yml

# Deploy applications (via ArgoCD UI/CLI)
kubectl apply -f kubernetes/argocd/project.yaml
kubectl apply -f kubernetes/argocd/frontend-app.yaml
kubectl apply -f kubernetes/argocd/backend-app.yaml

🌟 Key Highlights

Modular Terraform setup (pro-level)

Ansible automation for cluster setup

ArgoCD GitOps for Continuous Delivery

Clear separation between infra repo and app repo

Real-world microservices deployment workflow

👨‍💻 Author

Rahul Deokate
🚀 DevOps Engineer | Passionate about Infrastructure, Automation & Cloud-Native