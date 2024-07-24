# -*- coding: utf-8 -*-

def cria_matriz(linhas, colunas, valor):
    matriz = []
    
    for i in range(linhas):
        linha = []
        for j in range (colunas):
            linha.append(valor)
        matriz.append(linha)
    return matriz

def cria_matriz2(linhas, colunas):
    matriz = []    
    for i in range(linhas):
        linha = []
        for j in range (colunas):
            valor = int(input('Digite o elemento [' + str(i+1) + ', ' + str(j+1) + '] = '))
            linha.append(valor)
        matriz.append(linha)
    return matriz

def ler_matriz():
    lin = int(input('Digite o numero de linhas da matriz:'))
    col = int(input('Digite o numero de colunas da matriz:'))    
    return cria_matriz2(lin, col)

matriz = ler_matriz()
print(matriz)
