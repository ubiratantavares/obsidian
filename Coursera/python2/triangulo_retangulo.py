# -*- coding: utf-8 -*-
class Triangulo:
    
    def __init__(self, a, b, c):
        self.a = a
        self.b = b
        self.c = c
        
    def perimetro(self):
        return self.a + self.b + self.c

    def tipo_lado(self):
        if self.a == self.b and self.a == self.c:
            return 'equilátero'
        elif self.a == self.b or self.a == self.c or self.b == self.c:
            return 'isósceles'
        else:
            return 'escaleno'
        
    def maior_lado(self):
        maior = self.a        
        if self.b > maior:
            maior = self.b        
        if self.c > maior:
            maior = self.c            
        return maior
        
    def retangulo(self):
        if self.a == self.maior_lado():
            return self.a ** 2  == self.b ** 2 + self.c ** 2
        elif self.b == self.maior_lado():
            return self.b ** 2  == self.a ** 2 + self.c ** 2
        else:
            return self.c ** 2  == self.a ** 2 + self.b ** 2