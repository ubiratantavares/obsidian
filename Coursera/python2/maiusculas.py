# -*- coding: utf-8 -*-

def maiusculas(frase):
    s = ''
    for i in range(len(frase)):
        if ord(frase[i]) > 65 and ord(frase[i]) < 90:
            s += frase[i]
    return s

