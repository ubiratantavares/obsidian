"""
Amortização de empréstimos de longo prazo: Método Francês ou Tabela Price
Supor um empréstimo de R$ 5.000,00 pelo prazo de 10 meses, a juros de 10% a.m. A forma de amortização é pela Tabela
Price ou Sistema Francês. É pedido montar a tabela, calcular os juros e pagamentos mensais.
"""

from semana5 import gerar_tabela_price

gerar_tabela_price.calcular(5000, 10, 10)
