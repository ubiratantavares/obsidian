# -*- coding: utf-8 -*-

def ordena(lista):
    n = len(lista)
        
    for i in range(n - 1):
        minimo = i
            
        for j in range(i + 1, n):
            if lista[j] < lista[minimo]:
                minimo = j
                    
        lista[i], lista[minimo] = lista[minimo], lista[i]
    return lista

