'''
1 - Jussara estima que a reforma em sua casa custará algo em torno de R$ 80.000,00.
Como não dispõe de toda essa quantia, ela resolveu tomar um empréstimo de 50% desse valor a uma taxa de 6% a.m.
(juros simples), que deverão ser pagos no fim de 6 meses.
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

# a) valor total a ser pago
montante = s.montante_pelo_capital(saldo_devedor, taxa, periodo)
print('R$ {:.2f}'.format(montante))

# b) valor total de juros.
print('R$ {:.2f}'.format(s.juros_por_montante(montante, saldo_devedor)))
