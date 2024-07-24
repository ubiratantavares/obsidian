# -*- coding: utf-8 -*-

def conta_vogais(s):
    v = ['a', 'e', 'i', 'o', 'u']
    soma = 0    
    for i in range(len(v)):
        soma += s.count(v[i])
        soma += s.count(v[i].upper())
    return soma
            
def conta_consoantes(s):
    return len(s) - conta_vogais(s) - s.count(' ')

def conta_letras(frase, contar="vogais"):
    frase = frase.lstrip()
    if contar == 'vogais':
        return conta_vogais(frase)
    if contar == 'consoantes':
        return conta_consoantes(frase)  

