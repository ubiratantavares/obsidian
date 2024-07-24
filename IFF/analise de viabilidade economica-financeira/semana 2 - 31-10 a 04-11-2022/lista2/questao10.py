# 10. No fim de quanto tempo o capital de R\$ 500,00 a 10% a.a. e R$ 400,00 a 12% a.a.
# produzirão montantes iguais?

from semana2.compostos import Compostos

c = Compostos()

capital1 = 500
taxa1 = 10

capital2 = 400
taxa2 = 12

periodo = c.periodo_montantes_iguais(capital1, capital2, taxa1, taxa2)
print('{} anos'.format(int(periodo)))
