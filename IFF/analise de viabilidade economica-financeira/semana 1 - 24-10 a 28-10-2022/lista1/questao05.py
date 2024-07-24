# 5. O preço de venda de certa mercadoria é de R$ 6.700,00 que inclui uma margem de 25% sobre o preço de custo.
# Calcule o preço de custo.

from semana1.porcentagem import calcular_valor_inicial

preco_venda = 6700
taxa_acrescimo = 25
preco_custo = calcular_valor_inicial(preco_venda, taxa_acrescimo)
print('R$ {:.2f}'.format(preco_custo))
