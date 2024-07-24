# -*- coding: utf-8 -*-
"""
Created on Thu Feb 13 10:21:58 2020

@author: admin
"""

from random import random

class Ordenador:
    
    def selecao_direta(self, lista):
        
        fim = len(lista)
        
        for i in range(fim - 1):
            posicao_do_minimo = i
            
            for j in range(i + 1, fim):
                if lista[j] < lista[posicao_do_minimo]:
                    posicao_do_minimo = j
                    
            lista[i], lista[posicao_do_minimo] = lista[posicao_do_minimo], lista[i]
        return lista
            
    
if __name__ == '__main__':
    
    lista = []
    
    total_numeros = 1000
    
    for i in range(total_numeros):
        lista.append(total_numeros*random())
        
    ordenador = Ordenador()
    lista_ordenada = ordenador.selecao_direta(lista)
    print(lista_ordenada)