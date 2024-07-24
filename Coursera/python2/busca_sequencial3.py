# -*- coding: utf-8 -*-

"""
Exercício 2: Busca sequencial
Implemente a função busca(lista, elemento), que busca um determinado 
elemento em uma lista e devolve o índice correspondente à posição do 
elemento encontrado. Utilize o algoritmo de busca sequencial. 
Nos casos em que o elemento buscado não existir na lista, a 
função deve devolver o booleano False.

busca(['a', 'e', 'i'], 'e')
# deve devolver => 1

busca([12, 13, 14], 15)
# deve devolver => False
"""

def busca(lista, elemento):
    for i in range(len(lista)):
        if lista[i] == elemento:
            return i
    return False
    
def main():
    lista = ['a', 'e', 'i']
    elemento = 'e'
    print(busca(lista, elemento))
    
    lista = [12, 13, 14]
    elemento = 15
    print(busca(lista, elemento))
      
        
if __name__ == '__main__':
    main()   