#! /bin/bash

DEPLOYMENT_NAME=devoops-capstone
NEW_IMAGE_NAME=registry.hub.docker.com/nvnhan/devoops-capstone:latest

kubectl get deployments -o wide
kubectl set image deployments/${DEPLOYMENT_NAME} \
    ${DEPLOYMENT_NAME}=${NEW_IMAGE_NAME}
echo
kubectl get deployments -o wide
kubectl describe pods | grep -i image
kubectl get pods -o wide