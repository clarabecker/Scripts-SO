@echo off
setlocal enabledelayedexpansion

rem cria arquivo teste 
echo > quest5file1.txt

rem cria diretório de backup
set "backup_dir=backup_%date:/=_%_%time::=_%"
mkdir "!backup_dir!"
echo Diretorio de backup criado: !backup_dir!

rem move arquivo teste
move c:\script\quest5file1.txt c:\script\"!backup_dir!"
echo Arquivo teste esta no diretortio

echo Lista de arquivos no diretorio de backup:
dir /b "!backup_dir!"

rem acessa a pasta de backup
cd "!backup_dir!"

rem renomeia o arquivo teste 
ren quest5file1.txt file1.txt

rem copia o arquivo para pasta script
copy file1.txt c:\script

rem deleta o arquivo teste 
del file1.txt

exit /b







