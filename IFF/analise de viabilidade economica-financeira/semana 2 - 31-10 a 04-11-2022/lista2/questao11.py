'''
É comum que os contratos financeiros apresentem a taxa de juros relativa a um período de tempo (geralmente ao ano),
chamado de período financeiro. Porém para os cálculos considera-se a incidência dos juros em um período diferente
(geralmente ao mês), chamado de período de capitalização.

O cálculo, nesse caso, é feito com a utilização da taxa no período de capitalização proporcional à taxa contratada
no período financeiro.

Por exemplo, 10% a.a. capitalizados mensalmente:

- taxa contratada: 10% a.a
- período financeiro = 1 ano
- capitalização: mensal
- período de capitalização: um mês.
- taxa proporcional no período de capitalização: 10% / 12 = 0,83% a.m

Sabemos, no entanto, que por se tratar do regime de capitalização composta, o resultado obtido será diferente do
resultado indicado pela taxa contratada.

Assim, a taxa contratada de 10% a.a. é apenas uma taxa anual proporcional à taxa no período de capitalização, é uma taxa
meramente nominal, pois não corresponde ao resultado da operação.

A taxa que realmente reflete o custo financeiro anual da operação é a taxa anual equivalente a 0,83% a.m.
'''

taxa_ao_ano = 10
taxa_proporcional = taxa_ao_ano/12
print(taxa_proporcional)

taxa_nominal = taxa_proporcional

from semana2.compostos import Compostos

c = Compostos()

print('{:.2f}%'.format(c.taxa_efetiva(taxa_nominal, 12, 1)))