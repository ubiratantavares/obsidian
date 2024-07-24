"""
Considere que atualmente você disponha de certo capital a ser investido no próximo ano.
Após longa consulta e avaliação de opções, você definiu que deseja a seguinte configuração:

ao fim de 7 meses o capital que você aplicou deverá produzir um montante de R$ 13.000,00; e,
a partir de então, estima-se que nos próximos 5 meses será gerado um montante de R$ 19.500,00.

Pergunta-se: qual deverá ser o capital incialmente investido e a qual taxa de juros (com regime de juros simples)?
"""

from semana2.simples import Simples

s = Simples()

taxa = s.taxa_por_montantes(13_000, 19_500, 7, 12)
print("{:.2f}%".format(taxa))
print("R$ {:.2f}".format(s.capital_por_montante(13_000, taxa, 7)))
