#!/bin/bash

soma=1

while IFS= read -r line; do
    soma=$((soma + $line))
done < questao1.txt

echo $soma