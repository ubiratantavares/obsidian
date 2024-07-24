# 7. Um apartamento é vendido em 5 anos em parcelas mensais de R$ 500,00.

# Considere uma entrada de R$ 30.000,00.

# Para pagamento a vista, o preço total é de 54.000,00.

# A taxa de juros composta é de 6% a.a. Qual opção de pagamento você escolheria?

from semana2.compostos import Compostos

c = Compostos()

# Parcelamento de 500,00 em 5 anos = 30.000,00
parcela_mensal = 500

# periodo total de pagamento das parcelas em anos
periodo_ano = 5

# periodo total de pagamento das parcelas em meses
periodo_meses = periodo_ano * 12

# taxa ao ano
taxa = 6

valor_total = parcela_mensal * periodo_meses

print('R$ {:.2f}'.format(valor_total))

valor_montante = c.montante_pelo_capital(valor_total, taxa, periodo_ano)

print('R$ {:.2f}'.format(valor_montante))

valor_entrada = 30_000
valor_total_por_parcelamento = valor_entrada + valor_montante

print('R$ {:.2f}'.format(valor_total_por_parcelamento))

valor_a_vista = 54_000
print('R$ {:.2f}'.format(valor_a_vista))


if (valor_total_por_parcelamento < valor_a_vista):
    print('Comprar apartamento parcelado em 5 anos.')
else:
    print('Comprar apartamento á vista.')