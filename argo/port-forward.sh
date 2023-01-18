#!/bin/bash
#
if ! command -v kubectl &>/dev/null
then
  echo "Você não possui a kubectl instalada."
  echo "Saindo."
  exit
fi
PASSWORD=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
echo "O usuário para log-in é admin"
echo "A senha para o Argo é  $PASSWORD"
echo "Use ela para se autenticar em localhost:8080"
kubectl port-forward svc/argocd-server -n argocd 8080:80




