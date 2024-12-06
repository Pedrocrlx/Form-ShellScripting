#!/bin/bash
pastas=./*

#primeiro correr o ../01.sh para criar contéudo dentro das pastas do script_sample_folder
#depois correr o ../03.sh e passar um argumento para apagar o contéudo com esse argumento
#por ultimo correr o ../04.sh

#1- rodar o script **dir_spammer.sh**
#2- rodar esse script dentro da pasta **script_sample_folder**

echo "Deseja apagar ? 1-Sim OU 0-Não"
read resposta
for pasta in $pastas; do
  if [ $resposta == "1" ]; then
    rm -rf $pasta
  fi
  #não consegui fazer apagar se existe contéudo :(
  if [ $resposta == "0" && $pasta -e ]; then
    rm -rf $pasta
  fi
done

echo "tudo bene 🟢"