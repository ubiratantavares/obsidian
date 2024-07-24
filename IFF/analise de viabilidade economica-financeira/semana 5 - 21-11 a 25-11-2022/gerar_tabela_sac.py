import pandas as pd
from semana3.sac import SAC


def calcular(saldo_devedor, taxa, periodo):
    sac = SAC()
    # valor da amortização
    amortizacao = sac.calcular_amortizacao(saldo_devedor, periodo)
    acumulado = 0.0
    valores = []
    for i in range(1, periodo + 1):
        reg = []
        reg.append(i)
        # calculo do juros
        juros = sac.calcular_juros(saldo_devedor, taxa)
        reg.append(round(juros, 2))
        prestacao = sac.calcular_prestacao(amortizacao, juros)
        reg.insert(1, round(prestacao, 2))
        reg.append(round(amortizacao, 2))
        # calculo do valor acumulado
        if i == 1:
            acumulado = amortizacao
        else:
            acumulado += amortizacao
        reg.append(round(acumulado, 2))
        saldo_devedor = round(sac.calcular_saldo_devedor_atual(saldo_devedor, amortizacao), 2)
        reg.append(round(saldo_devedor, 2))
        valores.append(reg)
    df = pd.DataFrame(valores, columns=['Parcela', 'Pagamento', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
    df = pd.DataFrame(valores, columns=['Parcela', 'Prestação', 'Juros', 'Amortizacao', 'Acumulado', 'Saldo'])
    print('\nSistema de Amortização pelo Sistema de Amortização Constante\n')
    print(df.head(periodo))
    print('\nTotal pago: R$ {:.2f}'.format(round(df['Prestação'].sum(), 2)))
    print('Total de juros pago: R$ {:.2f}'.format(round(df['Juros'].sum(), 2)))
    print('Total amortizado: R$ {:.2f}\n'.format(round(df['Amortizacao'].sum(), 2)))