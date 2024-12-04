#!/bin/bash
pastas=./*

#1- rodar o script **dir_spammer.sh**
#2- rodar esse script dentro da pasta **script_sample_folder**
for pasta in $pastas; do
    touch $pasta/script_sample_folder-$(basename "$pasta").txt
done

echo "tudo certo ✅"