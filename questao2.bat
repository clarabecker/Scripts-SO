@echo off

echo > questao2.txt

	for /r "C:\" %%f in (System.*) do (
		echo %%f
		echo %%f >> questao2.txt
	)

type questao2.txt