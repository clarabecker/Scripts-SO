#!/bin/bash

> questao2.txt

find / -name "System" -type f | while read -r file; do
    echo "$file" >> questao2.txt
done