# 3. O preço de venda de certa mercadoria representa um acréscimo de 15% sobre o preço de custo de R$ 5.800,00.
# Qual é o preço de venda?

from semana1.porcentagem import calcular_valor_final

preco_custo = 5800
taxa_acrescimo = 15
preco_venda = calcular_valor_final(preco_custo, taxa_acrescimo)
print('R$ {:.2f}'.format(preco_venda))
