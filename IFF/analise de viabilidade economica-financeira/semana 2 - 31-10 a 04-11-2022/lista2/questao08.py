# 8. Quanto deve ser aplicado hoje para que se resgate, daqui a 18 meses, um montante de 35.700,00,
# sabendo-se que o fundo de capitalização composta remunera a uma taxa de 8,2% a cada três meses?

from semana2.compostos import Compostos

c = Compostos()

# valor do montante
montante = 35700

# taxa por trimestre
taxa = 8.2

# perido em meses
periodo_meses = 18

# periodo em trimestre
periodo_trimestre = periodo_meses/3

capital = c.capital_pelo_montante(montante, taxa, periodo_trimestre)
print('R$ {:.2f}'.format(capital))
