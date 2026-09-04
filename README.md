# Docker Todo App → ECR → ECS Fargate

## Overview

This project containerizes a Node.js Todo application with Docker and deploys the container image to Amazon ECR and Amazon ECS Fargate.

The project demonstrates the complete container deployment lifecycle:

**Application → Docker → GitHub Actions → Amazon ECR → ECS Fargate → Running Task**

## Architecture

```text
                    GitHub Repository
                           |
                           v
                    GitHub Actions
                           |
                    Docker Build
                           |
                           v
                 Amazon ECR (Private)
                           |
                           v
                    ECS Task Definition
                           |
                           v
                    ECS Service
                           |
                           v
                    Fargate Task
                           |
                           v
                      Todo App
                         :3000
```

For the current deployment, the application is exposed directly from the Fargate task using a public IP and a security group restricted to the developer's IP on TCP port 3000. No Application Load Balancer is used in this version.

## Technologies

- AWS
- Amazon ECR
- Amazon ECS
- AWS Fargate
- Docker
- GitHub Actions
- Git/GitHub
- Linux
- Node.js
- CloudWatch Logs

## Docker Implementation

- Created a Dockerfile for the Todo application
- Built the Docker image locally
- Ran and verified the container locally on port 3000
- Configured container port `3000/TCP`
- Used `.dockerignore` to reduce build context
- Verified application startup through container logs

### Local Docker Commands

```bash
docker build -t todo-app .

docker run -d -p 3000:3000 --name mytodo todo-app

docker ps
```

Open:

```text
http://localhost:3000
```

## GitHub Actions CI/CD

The repository contains a GitHub Actions workflow at `.github/workflows/docker-image.yml`.

The workflow runs on pushes and pull requests targeting `main` and performs:

1. Checkout repository
2. Configure AWS credentials
3. Authenticate with Amazon ECR
4. Build the Docker image
5. Tag the image for the ECR repository
6. Push the image to the private ECR repository

The workflow uses encrypted GitHub repository secrets for AWS authentication.

## Amazon ECR

Private ECR repository:

```text
todo-app
```

The workflow pushes the image with the `latest` tag.

## ECS Fargate Deployment

The container image from ECR was deployed to ECS Fargate using:

- ECS cluster: `todo-app-cluster`
- Task definition family: `todo-app`
- Task definition revision: `1`
- ECS service: `todo-app-service`
- Desired tasks: `1`
- Task CPU: `0.25 vCPU`
- Task memory: `0.5 GB`
- Container port: `3000`
- Task execution role: `ecsTaskExecutionRole`
- CloudWatch log group: `/ecs/todo-app`

The Fargate task was verified in the `RUNNING` state and the application was successfully accessed through the task's public IP on port 3000.

## Logging and Verification

CloudWatch logs verified successful application startup, including:

```text
Listening on port 3000
Using sqlite database at /etc/todos/todo.db
```

The deployed Todo application was also functionally tested by adding Todo items through the browser.

## Deployment Workflow

```text
Code
  ↓
Git
  ↓
GitHub Actions
  ↓
Docker Build
  ↓
Private Amazon ECR
  ↓
ECS Task Definition
  ↓
ECS Service
  ↓
AWS Fargate Task
  ↓
Todo Application
```

## Security Considerations

- ECR repository is private
- AWS credentials are stored as encrypted GitHub repository secrets
- ECS task uses an execution role for ECR image retrieval and logging
- Application ingress on TCP 3000 was restricted to the developer's IP through a security group
- No AWS credentials are stored in the Docker image or source code

## What I Learned

- Docker image and container lifecycle
- Dockerfile configuration
- Container port mapping and networking
- Amazon ECR image management
- GitHub Actions automation
- ECS task definitions and services
- AWS Fargate deployment
- IAM task execution roles
- CloudWatch container logging
- Troubleshooting container startup and deployment issues

## Future Improvements

- Add container image security scanning with Trivy
- Improve Docker image build efficiency
- Add stronger deployment controls and release tagging
- Add infrastructure automation with Terraform
- Add production-grade networking and load balancing when required
