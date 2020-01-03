#!/usr/bin/env sh

echo 'Run npm start'
npm start

kubectl apply -f ./bb.yaml

kubectl get deployments -n bulletin-board-test
