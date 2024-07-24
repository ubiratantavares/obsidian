# -*- coding: utf-8 -*-

from random import random

def lista_grande(n):
    lista = []
    for i in range(n):
        lista.append(int(n * random()))
    return lista
