# -*- coding: utf-8 -*-
"""
Exercício 1: Lista ordenada
Escreva a função ordenada(lista), que recebe uma lista com 
números inteiros como parâmetro e devolve o booleano True 
se a lista estiver ordenada e False se a lista não estiver ordenada.

"""

def ordenada(lista):
    for i in range(len(lista)):
        indice_do_menor = i        
        for j in range(i + 1, len(lista)):            
            if lista[indice_do_menor] < lista[j]:
                esta_ordenada = True
            else:
                return False
    return esta_ordenada
                
def main():
    lista = [-1, 10, -20]
    estaOrdenado = ordenada(lista)
    print(estaOrdenado)
    
        
if __name__ == '__main__':
    main()    

