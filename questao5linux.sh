#!/bin/bash

#!/bin/bash

#o programa faz o backup de arquivos 

if [[ -d backup ]]; then
  echo "Backup já foi executado."
  exit 1
fi

mkdir backup

mv * backup

touch backup/log.txt

echo "Iniciando backup" >> backup/log.txt

user=$(whoami)

echo "Usuário atual: $user" >> backup/log.txt

date=$(date +"%d/%m/%Y %H:%M:%S")

echo "Data e hora atuais: $date" >> backup/log.txt

ls -1 >> backup/log.txt

echo "Backup concluído" >> backup/log.txt

tar -czvf backup.tar.gz backup

exit