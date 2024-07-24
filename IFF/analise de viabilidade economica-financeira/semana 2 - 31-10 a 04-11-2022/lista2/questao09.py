# 9. Uma pessoa tem condições de aplicar seu dinheiro a 2% a.m. no mercado de capitais,
# capitalizável mensalmente. Se um amigo pedir-lhe emprestado R$ 15.000,00 por um ano,
# quanto deverá devolver para que sua aplicação seja equivalente nesse período?

from semana2.compostos import Compostos

c = Compostos()

# valor do capital
capital = 15000

# taxa ao mês
taxa = 2

# periodo em ano
periodo_ano = 1

# periodo em meses
periodo_meses = periodo_ano * 12

montante = c.montante_pelo_capital(capital, taxa, periodo_meses)
print('R$ {:.2f}'.format(montante))
