#!/bin/bash
#
if ! command -v kind &> /dev/null
then
  echo "Você não possui o kind instalado."
  echo "Terminando a execução"
fi

kind create cluster --name argo --config ./Cluster.yaml
