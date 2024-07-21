# Multiplicação de Matrizes

Este projeto implementa a multiplicação de duas matrizes em Pascal.

## Estrutura do Projeto

- `src/main.pas`: Arquivo principal que executa a multiplicação de matrizes.
- `include/Matriz.pas`: Implementação das funções utilizadas para manipulação de matrizes.
- `Makefile`: Script para compilar o projeto.
- `bin/`: Diretório onde o executável será gerado.
- `obj/`: Diretório para arquivos objeto.

## Como Compilar

1. Certifique-se de ter o compilador Free Pascal instalado.
2. Navegue até o diretório do projeto.
3. Execute `make` para compilar o projeto.

## Como Executar

Após a compilação, o executável estará na pasta `bin`. Para executar o programa, use o comando:
./bin/MultiplicacaoMatrizes <arquivo_matriz_A> <arquivo_matriz_B> <arquivo_resultado>

- `<arquivo_matriz_A>`: Nome do arquivo que contém a matriz A.
- `<arquivo_matriz_B>`: Nome do arquivo que contém a matriz B.
- `<arquivo_resultado>`: Nome do arquivo onde a matriz resultante será armazenada.

Exemplo:
./bin/MultiplicacaoMatrizes matrizA.txt matrizB.txt resultado.txt