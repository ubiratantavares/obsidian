# 7. Calcular o valor bruto de uma mercadoria cujo preço de fábrica é de R$ 1.200,00 por unidade e
# que sofre os acréscimos sucessivos de 3%, 5% e 7%.

from semana1.porcentagem import calcular_valor_final

preco_venda = calcular_valor_final(1200, 3, 5, 7)
print('R$ {:.2f}'.format(preco_venda))
