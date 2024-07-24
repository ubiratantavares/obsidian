# -*- coding: utf-8 -*-
"""
Escreva uma função que recebe um array de strings como parametro e devolve
a primeira string na ordem lexicografica, ignorando-se letras maiusculas e 
minusculas.

@author: natar
"""

def menor_string(lista):
    return None


def test_pontual(lista):
    return None
   


def testa_menor_string():
    teste_pontual(["ana", "maria", "Jose", "Valdemar"])
    return None
    

def pagamento_semanal(valor_por_hora, num_horas = 40):
    condicao = valor_por_hora >= 0 and num_horas >= 40
    msg = 'os parametos devem ser igual ou maior que zero.'
    assert condicao, msg
    return valor_por_hora * num_horas

pagamento_semanal(100, -20)


