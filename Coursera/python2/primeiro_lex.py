# -*- coding: utf-8 -*-

def primeiro_lex(lista):
    p = lista[0]    
    for i in range(1, len(lista)):
        if lista[i].lower() < p.lower():
            p = lista[i]
    return p
