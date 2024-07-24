# -*- coding: utf-8 -*-

def cria_matriz(linhas, colunas, valor):
    matriz = []
    
    for i in range(linhas):
        linha = []
        for j in range (colunas):
            linha.append(valor)
        matriz.append(linha)
    return matriz

matriz = cria_matriz(2, 3, 0)
print(matriz[0][0])
