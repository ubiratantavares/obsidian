"""
Considere a situação em que uma aplicação de certo capital (C), a juros simples com uma taxa de 12,5% ao ano,
gerou ao final do período de aplicação de 24 meses um montante igual a R$ 20.000,00.
"""

from semana2.simples import Simples
from semana2.compostos import Compostos

taxa = 12.5 # ao ano
montante = 20_000
periodo = 24/12 # meses em ano

simples = Simples()

capital = simples.capital_por_montante(montante, taxa, periodo)
print("{:.2f}".format(capital))


"""
Caso este capital (C) fosse aplicado durante 18 meses, sob o regime de capitalização composta a uma taxa de 9% ao 
semestre, o valor dos juros no final de 1 ano, em R$, seria de:
"""
periodo = 12/6 # 1 ano = 12 meses em semestre
taxa = 9 # ao semestre

compostos = Compostos()

juros = compostos.juros_por_capital(capital, taxa, periodo)
print('{:.2f}'.format(juros))

periodo = 18/6 # 1 ano = 12 meses em semestre
taxa = 9 # ao semestre

juros = compostos.juros_por_capital(capital, taxa, periodo)
print('{:.2f}'.format(juros))