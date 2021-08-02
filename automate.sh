#!/bin/sh
kubectl create -f ./secrets.yml
kubectl create -f ./configmap.yml
kubectl create -f ./mysql-pv.yaml
kubectl create -f ./mysql-service.yml
kubectl create -f ./mysql-compose.yml
sleep 10s
kubectl create -f ./nodejs-mysql-deployment.yml
kubectl create -f ./nodejs-service.yml
