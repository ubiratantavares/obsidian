# -*- coding: utf-8 -*-
"""
Created on Fri Feb 14 22:00:49 2020

@author: natar
"""

from time import time
from random import randrange

class ContaTempos:
    def lista_aleatoria(self, n):
        lista = [0 for x in range(n)]
        for i in range(n):
            lista[i] = randrange(1000)
        return lista
    
    def compara(self, n):
        lista1 = self.lista_aleatoria(n)
        lista2 = lista1[:]
        
        o = Ordenador()
        
        antes = time()
        o.selecao_direta(lista2)
        depois = time()
        print("O método da selecao demorou ", (depois - antes), ' segundos')
        
        antes = time()
        o.bolha(lista1)
        depois = time()
        print("O método da bolha demorou ", (depois - antes), ' segundos')
        

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
    ct = ContaTempos()
    ct.compara(100_000)