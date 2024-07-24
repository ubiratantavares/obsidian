# -*- coding: utf-8 -*-
"""

Exercício 1: Tamanho da matriz

Created on Tue Jan 21 12:33:20 2020

@author: Ubiratan da Silva Tavares

"""

def dimensoes(matriz):
    linha = len(matriz)
    coluna = len(matriz[0])
    print(str(linha) + 'X' + str(coluna))
    return None

minha_matriz = [[1], [2], [3]]
dimensoes(minha_matriz)

minha_matriz = [[1, 2, 3], [4, 5, 6]]
dimensoes(minha_matriz)

