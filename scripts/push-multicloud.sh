#!/bin/bash

IMAGE_NAME=my-anir
VERSION=v1

DOCKER_HUB=dalui17
AWS_ECR=811046139350.dkr.ecr.us-east-1.amazonaws.com
GCP_REPO=northamerica-northeast1-docker.pkg.dev/anir-project-490606/test

echo "🔨 Building Image..."
docker build -t $IMAGE_NAME .

echo "📦 Pushing to Docker Hub..."
docker tag $IMAGE_NAME $DOCKER_HUB/$IMAGE_NAME:$VERSION
docker push $DOCKER_HUB/$IMAGE_NAME:$VERSION

echo "☁️ Pushing to AWS ECR..."
docker tag $IMAGE_NAME $AWS_ECR/$IMAGE_NAME:$VERSION
docker push $AWS_ECR/$IMAGE_NAME:$VERSION

echo "🌍 Pushing to GCP Artifact Registry..."
docker tag $IMAGE_NAME $GCP_REPO/$IMAGE_NAME:$VERSION
docker push $GCP_REPO/$IMAGE_NAME:$VERSION

echo "✅ Done! Multi-cloud push successful."
