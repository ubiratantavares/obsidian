# 1. Calcular o montante a juros simples do capital de R$ 2.500,00, durante 23 dias, a 14% ao mês.

from semana2.simples import Simples

s = Simples()

capital = 2500

# taxa ao mes
taxa_ao_mes = 14

# taxa em dias
taxa_ao_dia = taxa_ao_mes/30
print('Taxa de {:.2f}% ao dia.'.format(taxa_ao_dia))

# periodo em dias
periodo = 23

print('R$ {:.2f}'.format(s.montante_pelo_capital(capital, taxa_ao_dia, periodo)))
