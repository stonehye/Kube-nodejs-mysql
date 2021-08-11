#!/bin/sh
kubectl apply -f ./namespace.yaml
kubectl apply -f ./secrets.yaml
kubectl apply -f ./configmap.yaml
kubectl apply -f ./mysql-pv.yaml
kubectl apply -f ./mysql.yaml
# sleep 240s
kubectl apply -f ./waplshop-app.yaml
