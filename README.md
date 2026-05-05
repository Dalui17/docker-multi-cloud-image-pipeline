# 🚀 Multi-Cloud Docker Image Pipeline

## 📌 Overview

Built a production-style Docker pipeline that builds, optimizes, and distributes container images across multiple cloud registries.

This project demonstrates real-world DevOps practices including:

* Multi-stage Docker builds
* Image optimization
* Multi-cloud registry integration
* Automated image distribution

---

## 🏗️ Architecture

Developer → Docker Build → Optimized Image
→ Tagging Strategy → Multi-Cloud Push
→ Docker Hub | AWS ECR | GCP Artifact Registry

---

## ⚙️ Tech Stack

* Docker
* AWS ECR
* Google Artifact Registry
* Docker Hub
* Linux (Ubuntu)
* Shell Scripting

---

## 🐳 Key Features

### ✅ Multi-Stage Build Optimization

* Reduced image size using Alpine base
* Improved performance and security

### ☁️ Multi-Cloud Image Distribution

Single image pushed to:

* Docker Hub
* AWS ECR
* GCP Artifact Registry

### ⚡ Automation Script

* One command to build + tag + push across all platforms

---

## 🧪 Commands Used

### Build Image

```bash
docker build -t my-anir .
```

### Run Container

```bash
docker run -d -p 80:80 my-anir
```

---

## 📦 Multi-Cloud Push Flow

### Docker Hub

```bash
docker tag my-anir dalui17/my-anir:v1
docker push dalui17/my-anir:v1
```

### AWS ECR

```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <account>.dkr.ecr.us-east-1.amazonaws.com

docker tag my-anir <ecr-repo>/my-anir:v1
docker push <ecr-repo>/my-anir:v1
```

### GCP Artifact Registry

```bash
gcloud auth configure-docker northamerica-northeast1-docker.pkg.dev

docker tag my-anir <gcp-repo>/my-anir:v1
docker push <gcp-repo>/my-anir:v1
```

---

## 📊 Results

* 🔥 Reduced image size using multi-stage builds
* 🚀 Automated deployment workflow
* ☁️ Successfully pushed to 3 cloud registries
* ⚡ Production-ready container pipeline

---

## 📸 Screenshots

(Add your screenshots here)

---

## 🎯 Future Enhancements

* Integrate with Jenkins CI/CD
* Deploy on Kubernetes
* Add monitoring (Prometheus + Grafana)

---

## 👨‍💻 Author

Anirban Dalui
