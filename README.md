# Paradigma Funcional - Haskell

## Contexto:

Podemos entender Paradigma como sendo um modelo conceitual que tem por finalidade orientar soluções de projeto e implementação. Para um problema a ser solucionado, existe um paradigma mais adequado para este fim devido a sua forma particular de abordar os problemas e de chegar às respectivas soluções.

No presente projeto foi abordado o Paradigma Funcional para criar um sistema responsável por implementar o algoritmo Max 1D Range Sum, que busca informar a maior soma de um sub-array dentro de um array principal.

## Objetivo
O objetivo deste é a comparação do desempenho do algoritmo _Max 1D Range Sum_ nas linguagens C++, Java e Haskell. Para resultados mais expressivos, foi definido um código que gera uma lista com 1000 números aleatórios que servirão de entrada para as aplicações.

## Como gerar novos números aleatórios

No terminal, digite:

	$ g++ -o generator.cpp prog
	$ ./prog

## Compilando
Dentro do projeto existem os arquivos com extensão .hs(**Haskell**), .java(**Java**) e .cpp(**C++**), sendo a compilação de cada um diferente.

### Haskell
No Haskell temos dois arquivos principais e dois módulos, o comando de compilação deve ser utilizado apenas nos arquivos principais que são _max1DRange.hs_ e _max1DRangeSum.hs_.

Para compilar:

 	gch -o <Nome do executavel> <codigo Haskell>

### Java
No Java, temos apenas os dois códigos fontes

Para compilar:

 	javac <codigo Java>.java

### C++
No C++, temos apenas os dois códigos fontes

Para compilar:

 	g++ -o <Nome do executavel> <codigo C++>.cpp

## Execução
Todos os programas podem ser utilizados no terminal. Para o sistema calcular o tempo da aplicação utilizaremos o _time_ antes do código. A entrada de dados será o arquivo input que é gerado com o código generator.cpp e esse arquivo será direcionado para o input do terminal _<_.

### Haskell e C++
	time ./<Nome do executavel> < input

### Java
	time java <Nome do executavel(sem a extensão .class)> < input

## Conclusão
Mesmo com o resultado temporal da execução sendo dependente da maquina em que esta sendo executado, é notório que o Haskell neste tipo de algoritmo é extremamente mais lento que o java e o c++, já o java é o segundo mais lento e o C++ o que executa mais rápido.
