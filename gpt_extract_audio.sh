#!/bin/bash

# Defina o diretório de salvamento
diretorio_salvamento="/home/amor/audios"

# Verifique se foi fornecido um URL como argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <URL>"
    exit 1
fi

data_hora=$(date +"%d-%m-%Y-%H-%M-%S")
nome_arquivo="$data_hora.aac"

# Garanta que o diretório de salvamento exista
mkdir -p "$diretorio_salvamento"

# Mude para o diretório de salvamento
cd "$diretorio_salvamento" || exit

# Execute o comando curl para baixar o arquivo e salvá-lo com o nome gerado
curl $1 "headers" --output $nome_arquivo






