# Busca Binária

Este projeto implementa um algoritmo de busca binária em Pascal.

## Estrutura do Projeto

- `src/main.pas`: Arquivo principal que executa a busca binária.
- `include/busca_binaria.pas`: Implementação das funções utilizadas no algoritmo de busca binária.
- `Makefile`: Script para compilar o projeto.
- `bin/`: Diretório onde o executável será gerado.
- `obj/`: Diretório para arquivos objeto.

## Como Compilar

1. Certifique-se de ter o compilador Free Pascal instalado.
2. Navegue até o diretório do projeto.
3. Execute `make` para compilar o projeto.

## Como Executar

Após a compilação, o executável estará na pasta `bin`. Para executar o programa, primeiro coloque o arquivo.txt contendo o vetor na pasta `data`, depois use o comando use o comando:
"./bin/busca_binaria data/<arquivo_de_entrada> <inteiro_k>"


- `<arquivo_de_entrada>`: Nome do arquivo que contém os números a serem pesquisados.
- `<inteiro_k>`: Inteiro a ser procurado no vetor.

Exemplo:
./bin/busca_binaria data/numeros.txt 42