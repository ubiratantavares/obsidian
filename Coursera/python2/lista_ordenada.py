# -*- coding: utf-8 -*-

def ordenada(lista):
    resultado = True
    fim = len(lista)
    if fim > 1:
        for i in range(fim - 1):
            indice_do_menor = i        
            for j in range(i + 1, fim):            
                if lista[indice_do_menor] < lista[j]:
                    resultado = True
                else:
                    resultado = False
                    return resultado
    return resultado
 
