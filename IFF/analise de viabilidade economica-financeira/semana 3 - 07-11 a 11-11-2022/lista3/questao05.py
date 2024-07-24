'''
5. Repita o exercício 3 para uma taxa de 30% a.a. Qual o aumento percentual do total a ser pago?
Observando-se o valor do amortizado, houve grande variação?
'''

'''
3 - Construa o quadro de amortização, segundo o sistema francês de um empréstimo de R$ 185.000,00 a ser amortizado
em três prestações anuais.
'''

import pandas as pd
from semana3.price import Price
from semana1.porcentagem import calcular_taxa_percentual

p = Price()

# valor emprestado
saldo_devedor = 185_000

# periodo em anos
periodo = 3

# valor da taxa de juros ao ano
taxa = 30

# valor de cada prestacao
prestacao = p.calcular_prestacao(saldo_devedor, taxa, periodo)
print('R$ {:.2f}'.format(prestacao))

juros = 0.0
amortizacao = 0.0
acumulado = 0.0


total_pago = 0.0
total_de_juros = 0.0
total_amortizado = 0.0



valores = []

for i in range(1, periodo+1):
    reg = []

    reg.append(i)

    reg.append(round(prestacao, 2))

    # calculo do juros
    juros = p.calcular_juros(saldo_devedor, taxa)
    reg.append(round(juros, 2))

    # calculo da amortizacao
    amortizacao = p.calcular_amortizacao(prestacao, juros)
    reg.append(round(amortizacao, 2))

    # calculo do valor acumulado
    if i == 1:
        acumulado = amortizacao
    else:
        acumulado += amortizacao

    reg.append(round(acumulado, 2))

    # calculo do saldo
    if i == 1:
        saldo_devedor = round(p.calcular_saldo_devedor(saldo_devedor, amortizacao), 2)
    else:
        saldo_devedor -= amortizacao

    reg.append(round(saldo_devedor, 2))

    valores.append(reg)

df = pd.DataFrame(valores, columns=['Parcela', 'Pagamento', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
df.set_index('Parcela', inplace=True)

print(df.head(periodo))

print('Total pago: R$ {:.2f}'.format(round(df['Pagamento'].sum(), 2)))

print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))

print('Total amortizado: R$ {:.2f}'.format(round(df['Amortizacao'].sum(), 2)))

valor_a_ser_pago_q3 = 284323.77
valor_a_ser_pago_q5 = 305597.73
print('Valor a ser pago aumentou cerca de {:.2f}%'.format(calcular_taxa_percentual(valor_a_ser_pago_q3, valor_a_ser_pago_q5)))

valor_juros_a_ser_pago_q3 = 99323.77
valor_juros_a_ser_pago_q5 = 120597.75
print('Valor a ser pago de juros aumentou {:.2f} %'.format(calcular_taxa_percentual(valor_juros_a_ser_pago_q3, valor_juros_a_ser_pago_q5)))
