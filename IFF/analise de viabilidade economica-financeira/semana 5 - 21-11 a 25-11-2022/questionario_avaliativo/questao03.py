"""
Uma dívida no valor de R$ 36.000,00 foi liquidada por meio de 36 prestações mensais consecutivas, vencendo
a primeira delas um mês após a data do empréstimo.
Considere a taxa de 1,7 % a.m. e avalie as afirmações abaixo, marcando APENAS a(s) que julgar Verdadeira(s).
"""

from semana5 import gerar_tabela_price, gerar_tabela_sac, gerar_tabela_sa

gerar_tabela_price.calcular(36000, 1.7, 36)
gerar_tabela_sac.calcular(36000, 1.7, 36)
gerar_tabela_sa.calcular(36000, 1.7, 36)
