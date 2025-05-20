#!/bin/sh

mvn clean package

docker build -t spring-postgresql-k8s:latest .

kubectl apply -f k8s/postgres.yaml
kubectl apply -f k8s/app.yaml