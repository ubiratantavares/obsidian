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
        
    def semelhantes(self, triangulo):
        l1 = [self.a, self.b, self.c]
        l1.sort()
        l2 = [triangulo.a, triangulo.b, triangulo.c]
        l2.sort()
        for i  in range(1, len(l1)-1):
            if l2[i]/l1[i] == l2[0]/l1[0]:
                eSemelhante = True
            else:
                eSemelhante = False
                break
        return eSemelhante
      