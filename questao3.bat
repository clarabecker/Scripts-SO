cls
@echo off

SET v1=%~1
SET v2=%~2
SET operacao=%~3

ECHO Tipos de operacao: 1 - Soma, 2 - Subtracao, 3 - Multiplicacao

if %operacao%==1 call :calcularSoma
if %operacao%==2 call :calcularSubtracao 
if %operacao%==3 call :calcularMultiplicacao 

:fim
EXIT /B

:calcularSoma
SET /A resultadoSoma=%v1%+%v2%
ECHO O resultado da Soma e: %resultadoSoma%
goto :eof

:calcularSubtracao
SET /A resultadoSubtracao=%v1%-%v2%
ECHO O resultado da Subtracao e: %resultadoSubtracao%
goto :eof

:calcularMultiplicacao
SET /A resultadoMultiplicacao=%v1%*%v2%
ECHO O resultado da Multiplicacao e: %resultadoMultiplicacao%
goto :eof