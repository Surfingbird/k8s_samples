#!/bin/bash

SERIVCE="django-app"
echo $SERIVCE    

eval $(minikube docker-env) && docker build . -t $SERIVCE;

# kubectl create -f kube/base/depl/deployment.yaml;
# kubectl expose deployment  $SERIVCE --type=NodePort  --port=8000

kubectl create -k kube/base/

URL=$(minikube service $SERIVCE --url)

echo "go to $URL/polls"