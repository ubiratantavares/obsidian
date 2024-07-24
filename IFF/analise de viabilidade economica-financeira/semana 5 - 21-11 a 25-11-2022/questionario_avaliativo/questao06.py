"""
Na tabela a seguir tem-se o plano de amortização, pelo método da tabela Price, de uma dívida de R$ 15.000,00 a ser paga
em 6 parcelas mensais. A primeira delas ao completar 30 dias da data do empréstimo. A taxa de juros é de 1,8% a.m.
"""

from semana5 import gerar_tabela_price

gerar_tabela_price.calcular(15000, 1.8, 6)
