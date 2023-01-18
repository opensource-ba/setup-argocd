#!/bin/bash
#
if ! command -v kind &> /dev/null
then
  echo "Você não possui o kind instalado."
  echo "Terminando a execução"
fi

kind delete cluster --name argo
