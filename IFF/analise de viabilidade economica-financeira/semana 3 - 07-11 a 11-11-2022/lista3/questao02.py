'''
2 - Jussara estima que a reforma em sua casa custará algo em torno de R$ 80.000,00.
Como não dispõe de toda essa quantia, ela resolveu tomar um empréstimo de 50% desse valor a uma taxa de 6% a.m.
(juros simples), que deverão ser pagos antecipadamente.
'''

from semana2.simples import Simples

s = Simples()


saldo_devedor = 80_000

percentual = 50

saldo_devedor = saldo_devedor * percentual/100
print('Saldo devedor: {:.2f}'.format(saldo_devedor))

# taxa ao mês
taxa = 6

# periodo em meses
periodo = 6

# a) taxa real de juros cobrada?
taxa_real = s.taxa_efetiva(taxa, periodo)
print(taxa_real)

# b) valor que deverá ser pago?
montante = s.montante_pelo_capital(saldo_devedor, taxa_real, periodo)
print('R$ {:.2f}'.format(montante))

# c) valor dos juros?
print('R$ {:.2f}'.format(s.juros_por_montante(montante, saldo_devedor)))