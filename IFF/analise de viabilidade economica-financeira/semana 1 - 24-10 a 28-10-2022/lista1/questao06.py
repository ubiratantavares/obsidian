# 6. O preço de venda de certa mercadoria é R$ 1.500,00 e resulta de um abatimento de 25%
# sobre o preço de custo. Calcule o preço de custo.

from semana1.porcentagem import calcular_valor_inicial

preco_venda = 1500
taxas_decrescimos = -25 # valor negativo refere-se a abatimento
preco_custo = calcular_valor_inicial(preco_venda, taxas_decrescimos)
print('R$ {:.2f}'.format(preco_custo))
