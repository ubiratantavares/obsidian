# 9. Calcular o valor líquido de uma mercadoria que sofreu, sucessivamente, os abatimentos de
# 5%, 10%, 15% e 20% sobre o valor inicial de R$ 100.000,00.

from semana1.porcentagem import calcular_valor_final

preco_liquido = calcular_valor_final(100_000, -5, -10, -15, -20)
print('R$ {:.2f}'.format(preco_liquido))
