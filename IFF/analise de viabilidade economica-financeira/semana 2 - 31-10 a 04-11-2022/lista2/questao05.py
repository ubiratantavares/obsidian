# 5. Quanto se deve aplicar a 12% ao mês, para que se obtenha mesmos juros simples que os produzidos por
# R$ 400.000,00 emprestados 15% ao mês, durante o mesmo período?

from semana2.simples import Simples

s = Simples()

capital = 400_000

# taxa ao  mes
taxa = 15

# periodo em mes
periodo = 1

s = Simples()
juros = s.juros_por_capital(capital, taxa, periodo)
print('R$ {:.2f}'.format(juros))

taxa = 12

capital = s.capital_por_juros(juros, taxa, periodo)
print('R$ {:.2f}'.format(capital))

