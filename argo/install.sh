#!/bin/bash
#
if ! command -v helm &> /dev/null
then
  echo "Você não possui o helm instalado."
  echo "Saindo."
  exit
fi

helm install argocd argo/argo-cd -n argocd --create-namespace
