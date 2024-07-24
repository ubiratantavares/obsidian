# -*- coding: utf-8 -*-

def busca_sequencial(seq, elemento):
    '''(list, float) -> bool'''
    
    for i in range(len(seq)):
        if seq[i] == elemento:
            return True
    return False
    
def main():
    lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    elemento = 11
    achou = busca_sequencial(lista, elemento)
    
    if achou:
        print('Elemento encontrado na lista')
    else: 
        print('Elemento não encontrado na lista')
       
        
        
if __name__ == '__main__':
    main()
    