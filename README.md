
# Architecting a Cloud Native Three-Tier Application

This project demonstrates the design, deployment, and automation of a **cloud-native three-tier application** using modern DevOps tools and practices on Microsoft Azure.

The architecture consists of:

- **Frontend**: A React-based Next.js application
- **Backend**: A Node.js REST API with user authentication
- **Infrastructure**: Provisioned using Terraform and deployed to Azure Kubernetes Service (AKS)
- **CI/CD**: Managed via Azure DevOps pipelines

---

## 📁 Project Structure

```
.
├── authentication_app_backend/      # Node.js backend application
├── authentication_app_frontend/     # Next.js frontend application
├── terraform/                       # Terraform scripts to provision infrastructure
├── manifests/                       # Kubernetes deployment YAML files
├── piplines-file/                   # Azure DevOps pipeline YAMLs
└── README.md
```

---

## 🚀 Deployment Guide

### 1. Provision Infrastructure

Use Terraform to provision the Azure infrastructure (Resource Group, AKS Cluster, etc.):

```bash
cd terraform/solution
terraform init
terraform apply
```

Ensure that you have:
- Azure CLI installed and authenticated
- Remote backend configured (e.g., Azure Storage Account for `terraform.tfstate`)

---

### 2. Deploy Applications to Kubernetes

Once the AKS cluster is ready and your `kubectl` is configured:

```bash
kubectl apply -f manifests/kubernetes/backend_deploy.yml
kubectl apply -f manifests/kubernetes/frontend_deploy.yml
```

This will deploy both backend and frontend as services and deployments on AKS.

---

### 3. CI/CD with Azure DevOps

Pipelines included:

- **infra-ppline.yml**: Provisions infrastructure with Terraform
- **azure-pipelines-backend.yml**: Builds and deploys the backend
- **azure-pipelines-frontend.yml**: Builds and deploys the frontend

To use them:

1. Create a new pipeline in Azure DevOps.
2. Connect it to this repository.
3. Choose the correct pipeline YAML file from `piplines-file/`.

Make sure to set up:
- A service connection to Azure
- Required environment variables (ARM credentials)

---

## 🧪 Testing

### Backend

Run unit tests using Jest:

```bash
cd authentication_app_backend
npm install
npm test
```

### Frontend

Run component tests using React Testing Library:

```bash
cd authentication_app_frontend
npm install
npm run test
```

---

## 🔐 Environment Variables

Both frontend and backend require environment variables. Refer to the `.env.example` files in each folder and create a `.env` file accordingly.

---

## 📌 Prerequisites

- Azure Subscription
- Azure CLI
- Terraform
- Docker
- Kubernetes (kubectl)
- Node.js and npm
- Azure DevOps account

---

## 👩‍💻 Author

**Ahad**  
DevOps Trainee | Saudi Digital Academy  
This project was built as part of a hands-on DevOps training lab focused on cloud-native applications.

---
