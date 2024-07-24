# -*- coding: utf-8 -*-
"""

Exercício 2: Soma de matrizes

Created on Tue Jan 21 12:43:26 2020

@author: Ubiratan da Silva Tavares

"""

def dimensoes(matriz):
    linha = len(matriz)
    coluna = len(matriz[0])
    dim  = (linha, coluna)
    return dim

def comparar_dimensoes(m1, m2):
    dim1 = dimensoes(m1)
    dim2 = dimensoes(m2)
    if dim1 == dim2:
        return True
    else:
        return False

def soma_matrizes(m1, m2):
    if (comparar_dimensoes(m1, m2)):
        soma = []
        dim = dimensoes(m1)
        for i in range(dim[0]):
            linha = []
            for j in range(dim[1]):
                valor = m1[i][j] + m2[i][j]
                linha.append(valor)
            soma.append(linha)
        return soma                          
    else:
        return False
    
if __name__ == '__main__':
    m1 = [[1, 2, 3], [4, 5, 6]]
    m2 = [[2, 3, 4], [5, 6, 7]]
    print(soma_matrizes(m1, m2))
    
    m1 = [[1], [2], [3]]
    m2 = [[2, 3, 4], [5, 6, 7]]
    print(soma_matrizes(m1, m2))
