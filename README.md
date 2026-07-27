# 🚀 Dockerized Todo Application on AWS ECS

## 📌 Overview

This project demonstrates how to containerize and deploy a Todo web application on **Amazon Elastic Container Service (ECS)** using **Docker** and **Amazon Elastic Container Registry (ECR)**.

The application is packaged as a Docker image, stored in Amazon ECR, and deployed on Amazon ECS using AWS networking and security best practices.

---

## 🔄 Application Workflow

```text
User
  │
  ▼
Amazon ECS Service
  │
  ▼
Docker Container
  │
  ▼
Todo Application
```

---

## ☁️ AWS Services Used

- Amazon ECS
- Amazon ECR
- Amazon EC2 (if using the EC2 launch type)
- Amazon VPC
- Security Groups
- IAM

---

## 🐳 Docker Components

- Docker Engine
- Dockerfile
- Docker Image
- Docker Container
- Docker Hub (optional)
- Amazon ECR

---

## ✨ Project Highlights

- Containerized a Todo application using Docker.
- Created a custom Docker image with a Dockerfile.
- Pushed the Docker image to Amazon Elastic Container Registry (ECR).
- Deployed the application on Amazon Elastic Container Service (ECS).
- Configured VPC networking and Security Groups for secure access.
- Verified the application deployment through the ECS service.

---

## 🏛️ Infrastructure Components

### Containerization

- Docker
- Dockerfile
- Docker Image

### Container Registry

- Amazon Elastic Container Registry (ECR)

### Container Orchestration

- Amazon Elastic Container Service (ECS)

### Networking

- Amazon VPC
- Security Groups

### Identity & Access

- AWS IAM

---

## 🔒 Security

- Stored container images securely in Amazon ECR.
- Configured IAM permissions for ECS tasks.
- Used Security Groups to control network access.
- Deployed the application inside an Amazon VPC.

---

## 🛠️ Skills Demonstrated

- Docker
- Dockerfile
- Containerization
- Amazon ECS
- Amazon ECR
- Amazon VPC
- IAM
- Linux
- AWS Networking

---

## 📂 Repository Structure

```text
dockerized-todo-application
│
├── Dockerfile
├── README.md
├── app/
├── package.json
└── screenshots/
```

---

## 🎯 Outcome

Successfully containerized and deployed a Todo application on Amazon ECS by:

- Building a Docker image.
- Pushing the image to Amazon ECR.
- Deploying the container using Amazon ECS.
- Configuring networking and security.
- Validating the application deployment.

---

## 👨‍💻 Author

**Srinil Reddy**

Cloud Engineer | AWS | Docker | Linux

GitHub: https://github.com/SRINILREDDY
