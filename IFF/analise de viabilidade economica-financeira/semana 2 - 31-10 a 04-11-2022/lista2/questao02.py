# 2. Ao fim de quanto tempo o capital de R$ 5.000,00 a 20% a.a. produzirá juros simples de R$ 1.500,00?

from semana2.simples import Simples

s = Simples()

capital = 5_000

# taxa ao ano
taxa = 20

juros = 1_500

print('Período em anos de {}'.format(s.periodo_por_capital(capital, juros, taxa)))
