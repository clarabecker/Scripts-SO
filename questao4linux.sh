#!/bin/bash

now=$(date +"%s")

future=$((now + 300))

sleep $((future - now))

echo "O programa verifica se o valor da variável $valor é par ou impar"
valor=10

restoDivisao=$(($valor % 2))

if [ "$restoDivisao" -eq 0 ]; then
   echo "O valor informado e um numero Par"
else
   echo "O valor informado e um número Impar"
fi