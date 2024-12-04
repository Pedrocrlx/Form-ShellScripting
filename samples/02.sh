#!/bin/bash
pastas=./*

#1- rodar o script **dir_spammer.sh**
#2- rodar esse script dentro da pasta **script_sample_folder**
name=HE

for pasta in $pastas; do
    ren $pasta/script_sample_folder-$(basename "$name").txt
done

echo "tudo certo ✅"