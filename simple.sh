#!/bin/bash

kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16 > kubeout

sleep 120

kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

alias k=kubectl

token=`cat kubeout | grep "kubeadm join"`

echo $token

yum install -y ansible
