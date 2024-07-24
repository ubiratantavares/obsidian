"""
Uma instituição financeira oferece, pelo sistema SAC, duas opções de financiamento para o valor de R$ 150.000,00 e
taxa de juros 1% a.m.
A primeira opção consiste em financiar todo o valor e pagar em 100 prestações mensais.
A segunda opção propõe financiar todo o valor e pagar em 200 prestações mensais.
Pergunta-se: qual a redução percentual no valor da 1ª prestação da primeira opção para a segunda opção?
"""

from semana5 import gerar_tabela_price
from semana2.simples import Simples

s = Simples()

"""
calculo da SAC para a primeira opção
"""
gerar_tabela_price.calcular(150_000, 1, 100)

"""
calculo da SAC para a segunda opção
"""
gerar_tabela_price.calcular(150_000, 1, 200)

"""
calculo da redução percentual no valor da 1ª prestação da primeira opção para a segunda opção
"""
print("{:.2f}".format(s.taxa_por_montante(1737.49, 2379.86, 1)))
