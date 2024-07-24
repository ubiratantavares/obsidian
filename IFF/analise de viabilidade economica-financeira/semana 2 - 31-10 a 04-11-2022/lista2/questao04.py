# 4. Uma nota promissória de R$ 7.500,00 foi resgatada, dois meses antes de seu vencimento, por R$ 5.250,00.
# Calcular a taxa de desconto.

from semana2.simples import Simples
s = Simples()

# valor do capital
capital = 7_500

# valor do juros
juros = capital - 5_250

# periodo em mes
periodo = 2


taxa = s.taxa_por_capital(juros, capital, periodo)
print('{:.2f}% ao mes'.format(taxa))

