# -*- coding: utf-8 -*-

def menor_nome(nomes):
    menor, tam = nomes[0].strip(), len(nomes[0].strip())
    for i in range(1, len(nomes)):
        nome = nomes[i].strip()
        if len(nome) < tam:
            tam, menor = len(nome), nome
    return menor.capitalize()
