# -*- coding: utf-8 -*-
class Monetaria:

    def __init__(self, valor):
        self.valor = round(valor, 2)
        self.notas = [100, 50, 20, 10, 5, 2]
        self.moedas = [1, 0.50, 0.25, 0.10, 0.05, 0.01]
        self.resultado_notas = []
        self.resultado_moedas = []

    def decompor(self):
        valor_restante = round(self.valor, 2)
        for nota in self.notas:
            quantidade_notas = int(valor_restante // nota)
            self.resultado_notas.append(quantidade_notas)
            valor_restante -= quantidade_notas * nota
            valor_restante = round(valor_restante, 2)
        for moeda in self.moedas:
            quantidade_moedas = int(valor_restante / moeda)
            self.resultado_moedas.append(quantidade_moedas)
            valor_restante -= quantidade_moedas * moeda
            valor_restante = round(valor_restante, 2)      

    def imprimir(self):
        print("NOTAS:")
        for i in range(len(self.notas)):
            print(f"{self.resultado_notas[i]} nota(s) de R$ {self.notas[i]:.2f}")

        print("MOEDAS:")
        for i in range(len(self.moedas)):
            print(f"{self.resultado_moedas[i]} moeda(s) de R$ {self.moedas[i]:.2f}")

valor= float(input())
monetario = Monetaria(valor)
monetario.decompor()
monetario.imprimir()
