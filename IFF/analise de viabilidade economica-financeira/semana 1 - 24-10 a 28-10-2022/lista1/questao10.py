# 10. Certa mercadoria é comercializada a R$ 180,00. Em uma campanha promocional, tal preço sofreu um desconto
# temporário de 12,5% durante uma semana.
# Ao final desse período o preço da mercadoria foi reajustado em 18%.
# Qual o preço final da mercadoria após a semana promocional?


from semana1.porcentagem import calcular_valor_final

preco_inicial = 180
taxa_decrescimo = -12.5
preco_liquido = calcular_valor_final(preco_inicial, taxa_decrescimo)
print('R$ {:.2f}'.format(preco_liquido))

taxa_acrescimo = 18
preco_final = calcular_valor_final(preco_liquido, taxa_acrescimo)
print('R$ {:.2f}'.format(preco_final))