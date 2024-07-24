# -*- coding: utf-8 -*-
"""
Created on Tue Jan 21 12:27:01 2020

@author: admin
"""

def cria_matriz(tot_lin, tot_col, valor):
    matriz = []  #lista vazia
    for i in range(tot_lin):
        linha = []
        for j in range(tot_col):
            linha.append(valor)
        matriz.append(linha)
    return matriz

x = cria_matriz(2,3,99)
print(x)