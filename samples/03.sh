#!/bin/bash
pastas=./*

#1- rodar o script **dir_spammer.sh**
#2- rodar esse script dentro da pasta **script_sample_folder**
for pasta in $pastas; do
    novo_nome="$pasta$1"
    mv $pasta $novo_nome
done

echo "tudo bene 🟢"