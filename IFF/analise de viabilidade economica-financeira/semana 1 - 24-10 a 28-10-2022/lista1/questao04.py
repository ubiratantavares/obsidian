# 4. O preço de venda de certa mercadoria é R$ 1.500,00 e representa um acréscimo de 25% sobre o preço de custo.
# Calcule o preço de custo.

from semana1.porcentagem import calcular_valor_inicial

preco_venda = 1500
taxa_acrescimo = 25
preco_venda = calcular_valor_inicial(preco_venda, taxa_acrescimo)
print('R$ {:.2f}'.format(preco_venda))
