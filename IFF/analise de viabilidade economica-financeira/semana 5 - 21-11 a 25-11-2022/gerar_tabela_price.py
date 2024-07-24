import pandas as pd
from semana3.price import Price


def calcular(saldo_devedor, taxa, periodo):
    p = Price()
    # valor de cada prestacao
    prestacao = p.calcular_prestacao(saldo_devedor, taxa, periodo)
    acumulado = 0.0
    valores = []
    for i in range(1, periodo + 1):
        reg = []
        reg.append(i)
        reg.append(round(prestacao, 2))
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
    df = pd.DataFrame(valores, columns=['Parcela', 'Prestação', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
    print('\nSistema de Amortização pelo método PRICE\n')
    print(df.head(periodo))
    print('\nTotal pago: R$ {:.2f}'.format(round(df['Prestação'].sum(), 2)))
    print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))
    print('Total amortizado: R$ {:.2f}\n'.format(round(df['Amortizacao'].sum(), 2)))