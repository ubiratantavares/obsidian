# -*- coding: utf-8 -*-
"""

Exercício 1: Imprimindo matrizes

Created on Tue Jan 21 13:19:27 2020

@author: Ubiratan da Silva Tavares

"""

def dimensoes(matriz):
    linha = len(matriz)
    coluna = len(matriz[0])
    dim  = (linha, coluna)
    return dim

def imprime_matriz(matriz):
    dim = dimensoes(matriz)    
    for i in range(dim[0]):
        for j in range(dim[1]):
            print("%d " %(matriz[i][j]), end="")  
        print(end = '\n')


minha_matriz = [[1], [2], [3]]
imprime_matriz(minha_matriz)

minha_matriz = [[1, 2, 3], [4, 5, 6]]
imprime_matriz(minha_matriz)

minha_matriz = [[1, 2], [3, 4]]
imprime_matriz(minha_matriz)

minha_matriz = [[1, 2, 7], [3, 4, 8], [1, 2, 3]]
imprime_matriz(minha_matriz)