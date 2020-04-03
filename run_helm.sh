#!/bin/bash

SERIVCE="django-app"  

eval $(minikube docker-env) && docker build . -t $SERIVCE;

helm install django-app  chart

URL=$(minikube service $SERIVCE-chart --url)

echo "go to $URL/polls"