'''
7 - Contraiu-se um empréstimo de R$ 500.000,00 para ser amortizado em 5 anos à taxa de 10% a.a. Do ponto de vista do
devedor, entre o Sistema Americano e o Tabela Price, qual o mais atrativo?
'''

import pandas as pd
from semana3.price import Price
from semana3.sa import SA

p = Price()

# valor emprestado
saldo_devedor = 500_000

# periodo em anos
periodo = 5

# valor da taxa de juros ao ano
taxa = 10

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

print('Sistema Price')
print(df.head(periodo))

print('Total pago: R$ {:.2f}'.format(round(df['Pagamento'].sum(), 2)))

print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))

print('Total amortizado: R$ {:.2f}'.format(round(df['Amortizacao'].sum(), 2)))

'''
Amortização de empréstimos de longo prazo: Sistema Americano

Supor um empréstimo de R$ 5.000,00 pelo prazo de 10 meses, a juros de 10% a.m. A forma de amortização é pela Tabela
Price ou Sistema Francês. É pedido montar a tabela, calcular os juros e pagamentos mensais.
'''



s = SA()

# valor emprestado
capital = 500_000

saldo_devedor = capital

# periodo em anos
periodo = 5

# valor da taxa de juros ao ano
taxa = 10

# valor dos juros
juros = s.calcular_juros(saldo_devedor, taxa)
print('R$ {:.2f}'.format(juros))

acumulado = 0.0

total_pago = 0.0
total_de_juros = 0.0
total_amortizado = 0.0

valores = []

for i in range(1, periodo+1):
    reg = []

    reg.append(i)

    reg.append(round(juros, 2))

    amortizacao = s.calcular_amortizacao(saldo_devedor, i, periodo)

    reg.append(round(amortizacao, 2))

    prestacao = s.calcular_prestacao(amortizacao, juros)

    reg.insert(1, round(prestacao, 2))

    acumulado += amortizacao

    reg.append(round(acumulado, 2))

    saldo_devedor = round(s.calcular_saldo_devedor_atual(saldo_devedor, amortizacao), 2)

    reg.append(round(saldo_devedor, 2))

    valores.append(reg)

df = pd.DataFrame(valores, columns=['Parcela', 'Pagamento', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
df.set_index('Parcela', inplace=True)

print('\nSistema Americano')
print(df.head(periodo))

print('Total pago: R$ {:.2f}'.format(round(df['Pagamento'].sum(), 2)))

print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))

print('Total amortizado: R$ {:.2f}'.format(round(df['Amortizacao'].sum(), 2)))

print('Qual o mais atrativo? {}'.format('O Sistema Americano'))




