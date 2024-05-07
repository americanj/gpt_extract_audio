#!/bin/bash

# Verifique se foi fornecido um URL como argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <URL>"
    echo exit 1
fi

data_hora=$(date +"%m-%d-%Y-%H-%M-%S")

nome_arquivo="$data_hora.aac"

curl $1 "headers" --output $nome_arquivo
