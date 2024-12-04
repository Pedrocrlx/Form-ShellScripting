#!/bin/bash

#como utilizar o ciclo while para correr um valor até 5 e parar
#a=0
#while [ $a -le 5 ]; do
#    echo $a
#    a=$(($a+1))
#done

#como utilizar o ciclo for para correr um valor até 5 e parar
#for number in {0..5}; do
#   echo $number
#done

#-------------------------------------------------------------------

#como utilizar o ciclo for para correr uma lista de nomes
names=(bruno pedro marina)

for item in ${names[@]}; do
    echo $item
done

#mostrar o número do index do array 
for index in ${!names[@]}; do
    echo "${names[index]} está na posição $index"
done

