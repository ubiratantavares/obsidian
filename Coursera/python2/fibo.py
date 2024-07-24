# -*- coding: utf-8 -*-

def fib(n):
    a, b = 0, 1
    while b < n:
        print(b, end=' ')
        a, b = b, a+b
    print()
    
def fib2(n):
    lista = []
    a, b = 0, 1
    while b < n:
        lista.append(b)
        a, b = b, a+b
    return lista

