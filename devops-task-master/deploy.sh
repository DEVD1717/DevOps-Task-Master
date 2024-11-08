#!/bin/bash

#  Docker Hub username
DOCKER_USERNAME="DEV1717"

# Build Docker images for frontend and backend without using cache
echo "Building frontend and backend Docker images..."
docker build --no-cache -t ${DOCKER_USERNAME}/my-frontend:latest ./frontend
docker build --no-cache -t ${DOCKER_USERNAME}/my-backend:latest ./backend

#  Push the images to Docker Hub
echo "Pushing images to Docker Hub..."
docker push ${DOCKER_USERNAME}/my-frontend:latest
docker push ${DOCKER_USERNAME}/my-backend:latest

#  Run Docker Compose to pull the latest images and start the application
echo "Deploying application with Docker Compose..."
docker-compose up -d --build
