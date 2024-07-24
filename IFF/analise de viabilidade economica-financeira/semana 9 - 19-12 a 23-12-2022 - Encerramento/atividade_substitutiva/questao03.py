from semana5 import gerar_tabela_price, gerar_tabela_sa, gerar_tabela_sac

'''
3) Considere um financiamento de uma máquina de R$ 250.000,00 a ser pago em 3 anos a uma taxa de 12% a.a.
Construa a tabela de amortização para:
'''

'''
a) Tabela Price
'''
gerar_tabela_price.calcular(250_000, 12, 3)

'''
b) O SAC
'''
gerar_tabela_sac.calcular(250_000, 12, 3)

'''
c) O Sistema Americano. 
'''
gerar_tabela_sa.calcular(250_000, 12, 3)






'''
Compare os 3 sistemas quanto ao total pago, juros e amortização.
'''