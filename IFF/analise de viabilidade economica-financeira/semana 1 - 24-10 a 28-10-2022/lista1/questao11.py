# 11. Uma mercadoria cujo preço de fábrica é de R$ 15.000,00 sofre, de forma sucessiva, os acréscimos de 3%, 5%,
# 8% e um quarto que eleva o seu preço final a R$ 21.024,36. Qual a percentagem do último acréscimo?

from semana1.porcentagem import calcular_valor_final, calcular_taxa_percentual

preco_intermediario = calcular_valor_final(15000, 3, 5, 8)
print('R$ {:.2f}'.format(preco_intermediario))

preco_final = 21_024.36
taxa = calcular_taxa_percentual(preco_intermediario, preco_final)
print('{:.2f}%'.format(taxa))