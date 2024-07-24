'''
6 - Um empréstimo de R$ 800.000,00 deve ser devolvido em 5 prestações semestrais pelo Sistema de Amortizações
Constantes (SAC) à taxa de 4% ao semestre.
'''

import pandas as pd
from semana3.sac import SAC

s = SAC()

# valor emprestado
saldo_devedor = 800_000

# periodo em meses
periodo = 5

# valor da taxa de juros ao semestre
taxa = 4

# valor da amortização
amortizacao = s.calcular_amortizacao(saldo_devedor, periodo)
print('R$ {:.2f}'.format(amortizacao))


acumulado = 0.0

total_pago = 0.0
total_de_juros = 0.0
total_amortizado = 0.0

valores = []

for i in range(1, periodo+1):
    reg = []

    reg.append(i)

    # calculo do juros
    juros = s.calcular_juros(saldo_devedor, taxa)

    reg.append(round(juros, 2))

    prestacao = s.calcular_prestacao(amortizacao, juros)

    reg.insert(1, round(prestacao, 2))

    reg.append(round(amortizacao, 2))

    # calculo do valor acumulado
    if i == 1:
        acumulado = amortizacao
    else:
        acumulado += amortizacao

    reg.append(round(acumulado, 2))

    saldo_devedor = round(s.calcular_saldo_devedor_atual(saldo_devedor, amortizacao), 2)

    reg.append(round(saldo_devedor, 2))

    print(reg)

    valores.append(reg)

df = pd.DataFrame(valores, columns=['Parcela', 'Pagamento', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
df.set_index('Parcela', inplace=True)

# a) Complete os valores ilegíveis da tabela abaixo
print(df.head(periodo))

print('Total pago: R$ {:.2f}'.format(round(df['Pagamento'].sum(), 2)))

print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))

print('Total amortizado: R$ {:.2f}'.format(round(df['Amortizacao'].sum(), 2)))

'''
Sabendo que um valor pode ser financiado em 5 anos à taxa de 20% a.a. pelo SAC, determine o valor do saldo devedor 
logo após o pagamento da 3a prestação.
'''

# valor emprestado
saldo_devedor = 800_000

# periodo em anos
periodo = 5

# valor da taxa de juros ao ano
taxa = 20

# valor da amortização
amortizacao = s.calcular_amortizacao(saldo_devedor, periodo)
print('R$ {:.2f}'.format(amortizacao))


acumulado = 0.0

total_pago = 0.0
total_de_juros = 0.0
total_amortizado = 0.0

valores = []

for i in range(1, periodo+1):
    reg = []

    reg.append(i)

    # calculo do juros
    juros = s.calcular_juros(saldo_devedor, taxa)

    reg.append(round(juros, 2))

    prestacao = s.calcular_prestacao(amortizacao, juros)

    reg.insert(1, round(prestacao, 2))

    reg.append(round(amortizacao, 2))

    # calculo do valor acumulado
    if i == 1:
        acumulado = amortizacao
    else:
        acumulado += amortizacao

    reg.append(round(acumulado, 2))

    saldo_devedor = round(s.calcular_saldo_devedor_atual(saldo_devedor, amortizacao), 2)

    reg.append(round(saldo_devedor, 2))

    print(reg)

    valores.append(reg)

df = pd.DataFrame(valores, columns=['Parcela', 'Pagamento', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
df.set_index('Parcela', inplace=True)

# a) Complete os valores ilegíveis da tabela abaixo
print(df.head(periodo))

print('Total pago: R$ {:.2f}'.format(round(df['Pagamento'].sum(), 2)))

print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))

print('Total amortizado: R$ {:.2f}'.format(round(df['Amortizacao'].sum(), 2)))

# valor emprestado
saldo_devedor = 800_000
print(0.4 * saldo_devedor)