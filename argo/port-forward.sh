#!/bin/bash
#
if ! command -v kubectl &>/dev/null
then
  echo "Você não possui a kubectl instalada."
  echo "Saindo."
  exit
fi

kubectl port-forward svc/argocd-server -n argocd 8080:80




