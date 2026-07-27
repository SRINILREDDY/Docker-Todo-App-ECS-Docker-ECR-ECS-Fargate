# 🚀 Dockerized Todo Application on Amazon ECS Fargate

## 📌 Overview

This project demonstrates how to containerize and deploy a Todo web application on **Amazon ECS Fargate** using **Docker** and **Amazon Elastic Container Registry (ECR)**. The application runs in serverless containers without managing EC2 instances, providing a scalable and fully managed container deployment.

---

## 🔄 Application Workflow

```text
User
   │
   ▼
Amazon ECS Service (Fargate)
   │
   ▼
Docker Container
   │
   ▼
Todo Application
```

---

## ☁️ AWS Services Used

- Amazon ECS (Fargate)
- Amazon ECR
- Amazon VPC
- Security Groups
- IAM
- CloudWatch Logs

---

## 🐳 Docker Components

- Docker
- Dockerfile
- Docker Image
- Docker Container
- Amazon Elastic Container Registry (ECR)

---

## ✨ Project Highlights

- Containerized a Todo application using Docker.
- Built a custom Docker image using a Dockerfile.
- Pushed the Docker image to Amazon Elastic Container Registry (ECR).
- Deployed the application on Amazon ECS using the Fargate launch type.
- Configured VPC networking and Security Groups for secure access.
- Used CloudWatch Logs to monitor the running container.
- Validated the deployment by accessing the running application.

---

## 🏛️ Infrastructure Components

### Containerization

- Docker
- Dockerfile
- Docker Image

### Container Orchestration

- Amazon ECS
- AWS Fargate
- ECS Task Definition
- ECS Service

### Container Registry

- Amazon Elastic Container Registry (ECR)

### Networking

- Amazon VPC
- Security Groups

### Monitoring

- Amazon CloudWatch Logs

### Identity & Access

- AWS IAM

---

## 🔒 Security

- Stored container images securely in Amazon ECR.
- Configured IAM roles for ECS task execution.
- Restricted network access using Security Groups.
- Deployed containers within an Amazon VPC.

---

## 🛠️ Skills Demonstrated

- Docker
- Dockerfile
- Containerization
- Amazon ECS
- AWS Fargate
- Amazon ECR
- Amazon VPC
- IAM
- CloudWatch Logs
- Linux

---

## 📂 Repository Structure

```text
dockerized-todo-application/
│
├── Dockerfile
├── README.md
├── app/
└── screenshots/
```

---

## 🎯 Outcome

Successfully containerized and deployed a Todo application on **Amazon ECS Fargate** by:

- Building a Docker image.
- Pushing the image to Amazon ECR.
- Deploying the application using Amazon ECS Fargate.
- Configuring networking and security.
- Monitoring the application using CloudWatch Logs.
- Validating end-to-end application deployment.

---

## 👨‍💻 Author

**Srinil Reddy**

Cloud Engineer | AWS | Docker | ECS | Linux

GitHub: https://github.com/SRINILREDDY

## 👨‍💻 Author

**Srinil Reddy**

Cloud Engineer | AWS | Docker | Linux

GitHub: https://github.com/SRINILREDDY
