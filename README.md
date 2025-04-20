# ECS Flask App Deployment with Custom VPC & CI/CD 🚀


![CI/CD Status](https://github.com/Bilal31313/ecs-flask-app/actions/workflows/deploy.yml/badge.svg)

---


This project demonstrates the full end-to-end deployment of a **Flask web application** on AWS using **custom-built infrastructure** — including a **self-created VPC**, **ECS Fargate**, **Elastic Container Registry (ECR)**, **Application Load Balancer (ALB)** — and **automated deployments** with **GitHub Actions (CI/CD)**.

---

## 📦 Stack Used

- **AWS VPC** – Custom Virtual Private Cloud with subnets and Internet Gateway
- **AWS ECS Fargate** – Serverless container hosting
- **AWS ECR** – Docker container image storage
- **AWS ALB** – Load Balancer for public web access
- **Docker** – Containerization of application
- **GitHub Actions** – Full CI/CD automation
- **Flask + Gunicorn** – Python web application

---

## 🌐 Application Demo

> ⚡ **Note:** This project was deployed to AWS and was previously live at:
>
> `http://ecs-flask-alb-402038394.eu-west-2.elb.amazonaws.com/`
>
> The deployment has been intentionally terminated to avoid unnecessary billing costs.
> As a result, the GitHub Actions deployment workflow may show failed runs post-project completion. This is expected and reflects responsible cloud cost and security management.


The project demonstrates:
- Building a containerized Flask app
- Deploying it to ECS Fargate
- Using an Application Load Balancer for public traffic
- Automating deployments with GitHub Actions CI/CD
![image](https://github.com/user-attachments/assets/af34f759-8829-439a-bd59-357bebb516b1)
![image](https://github.com/user-attachments/assets/25441876-ab03-4748-820b-57d6d62b218d)


## 🛠 Infrastructure Overview

- Built a **custom VPC** with:
  - **Public Subnets** across multiple AZs
  - **Internet Gateway (IGW)** for outbound internet access
  - **Security Groups** for fine-grained traffic control
- Deployed **ECS Fargate** service inside the custom VPC.
- Used **Application Load Balancer (ALB)** to expose the app publicly.
- Pushed Docker images to **ECR**.
- Automated deployment pipeline using **GitHub Actions**.

## 🗺️ Architecture Diagram


          +--------------------------+
          |     GitHub Repo           |
          | (ecs-flask-app project)    |
          +-------------+------------+
                        |
                   (Push Code)
                        |
                        v
       +---------------------------------+
       |        GitHub Actions           |
       | (CI/CD Pipeline: build, push,   |
       |   and deploy Docker images)     |
       +-----------------+---------------+
                         |
                (Secure AWS API Calls)
                         |
                         v
       +---------------------------------+
       |        Amazon Elastic Container |
       |        Registry (ECR)            |
       | (Stores built Docker images)     |
       +---------------------------------+
                         |
                   (Docker Pull)
                         |
                         v
       +---------------------------------+
       |       Amazon ECS Fargate        |
       | (Runs the containerized Flask   |
       |  app serverlessly)              |
       +---------------------------------+
                         |
                (App traffic on port 5000)
                         |
                         v
       +---------------------------------+
       |    Application Load Balancer    |
       | (Public URL exposed to users)    |
       +---------------------------------+
                         |
                (Internet Users)

---

## 🚀 CI/CD Pipeline

- **GitHub Actions** triggers on every push to `main`.
- Steps performed:
  - Checkout source code
  - Configure AWS credentials securely
  - Build Docker image
  - Push Docker image to ECR
  - Update ECS Fargate Service with new image
- **Secrets** such as AWS credentials and configurations are securely managed with **GitHub Secrets**.

Workflow file: [deploy.yml](.github/workflows/deploy.yml)

---

## 📂 Project Structure

ecs-flask-app/ ├── app/ │ ├── app.py │ └── requirements.txt ├── Dockerfile └── .github/ └── workflows/ └── deploy.yml


---

## 🎯 Skills Demonstrated

- Advanced AWS networking (Custom VPC + Subnets + IGW)
- Cloud-native application deployment
- Containerization with Docker
- Infrastructure automation with GitHub Actions
- Secure credential management
- Load Balancing and High Availability setup
- Serverless compute orchestration with Fargate

---

## 📜 License

This project is open-sourced for demonstration and educational purposes.

---

## 👨‍💻 Author

**Bilal Khawaja**  
Cloud Engineer | AWS Certified Solutions Architect Associate  
[LinkedIn](https://linkedin.com/in/bilal-khawaja-65b883243)

---

