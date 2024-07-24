# -*- coding: utf-8 -*-
"""

Exercício 2: Matrizes multiplicáveis

Created on Tue Jan 21 13:19:52 2020

@author: Ubiratan da Silva Tavares

"""

def dimensoes(matriz):
    linha = len(matriz)
    coluna = len(matriz[0])
    dim  = (linha, coluna)
    return dim

def sao_multiplicaveis(m1, m2):
    dim1 = dimensoes(m1)
    dim2 = dimensoes(m2)
    if dim1[1] == dim2[0]:
        return True
    else:
        return False    

m1 = [[1, 2, 3], [4, 5, 6]]
m2 = [[2, 3, 4], [5, 6, 7]]
print(sao_multiplicaveis(m1, m2))

m1 = [[1], [2], [3]]
m2 = [[1, 2, 3]]
print(sao_multiplicaveis(m1, m2))
