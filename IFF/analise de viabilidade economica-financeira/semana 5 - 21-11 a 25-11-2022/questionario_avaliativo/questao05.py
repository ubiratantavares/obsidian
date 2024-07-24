"""
Uma empresa tem dois sócios que desejam realizar um novo investimento para garantir a futura expansão do seu negócio.
O capital a ser investido é de R$ 240.000,00 a uma taxa de juros compostos de 1,5% a.m. durante um período de 2,5 anos.
Quanto cada um deles irá resgatar, ao final desse período, sabendo que o valor a ser resgatado será dividido
proporcionalmente ao valor investido por cada um. Considere que o sócio 1 investiu 55%.
"""

from semana2.compostos import Compostos

c = Compostos()

montante = c.montante_pelo_capital(240_000, 1.5, 2.5*12)
print("R$ {:.2f}".format(0.55 * montante))
print("R$ {:.2f}".format(0.45 * montante))
