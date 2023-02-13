#!/bin/bash

kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16 > kubeout

sleep 120

kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

alias k=kubectl

token1=`cat kubeout | grep "kubeadm join"`
token2=`cat kubeout | grep "--discovery-token"`
token="$token1$token2"

echo $token

yum install -y python3

git clone https://github.com/ansible/ansible.git
cd ./ansible
make rpm
rpm -Uvh ./rpm-build/ansible-*.noarch.rpm
