# ##### 8. Calcular o valor inicial de uma mercadoria que sofreu, de forma sucessiva, os acréscimos de
# 5%, 10%, 15% e 20% e foi vendida por R$ 150.000,00.

from semana1.porcentagem import calcular_valor_inicial

preco_inicial = calcular_valor_inicial(150_000, 5, 10, 15, 20)
print('R$ {:.2f}'.format(preco_inicial))