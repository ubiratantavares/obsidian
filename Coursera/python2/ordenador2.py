# -*- coding: utf-8 -*-
"""
Created on Thu Feb 13 10:21:58 2020

@author: admin
"""
from time import time
from random import randint

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
    
    def bolha(self, lista):
        fim = len(lista)        
        for i in range(fim-1, 0, -1):
            for j in range(i):
                if lista[j] > lista[j+1]:
                    lista[j], lista[j+1] = lista[j+1], lista[j]
        return lista
            
    
if __name__ == '__main__':
    
    lista = []
    
    total = 10_000
    
    for i in range(total):
        lista.append(randint(1, total))
        
    #print(lista)
    #print('\n')
        
    ordenador = Ordenador()
    antes = time()
    lista_ordenada = ordenador.selecao_direta(lista)
    depois = time()
    delta = depois - antes
    print("A ordenação pelo método da seleção demorou ", delta, " segundos")
    #print(lista_ordenada)
    #print('\n')
    
    antes = time()
    lista_ordenada2 = ordenador.bolha(lista)
    depois = time()
    delta = depois - antes
    print("A ordenação pelo método da bolha demorou  ", delta, " segundos")
    #print(lista_ordenada2)