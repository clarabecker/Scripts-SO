@echo off

set /A soma = 0

for /f "delims=" %%i in (questao1.txt) do (
	set /A soma += %%i
)

echo %soma%