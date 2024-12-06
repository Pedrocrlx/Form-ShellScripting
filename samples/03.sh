#!/bin/bash
files=./*

#1- rodar o script **dir_spammer.sh**
#2- rodar esse script dentro da pasta **script_sample_folder**
for file in $files; do
   if [[ $(basename "$file") == *$1* ]]; then
     rm -rf $file/*
   fi
done

echo "tudo bene 🟢"