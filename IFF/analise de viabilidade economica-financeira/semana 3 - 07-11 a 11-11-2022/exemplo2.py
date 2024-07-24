"""
Amortização de empréstimos de curto prazo

II - amortização de empréstimos a juros simples (antecipados):

Na prática os bancos cobram antecipadamente os juros devidos pelo empréstimo do capital na própria data de concessão
do empréstimo, isto é, no início do prazo do financiamento.

Nesse caso, calcula-se o valor do monatnte a juros simples

Uma pessoa necessitando de R$ 1000,00 por 6 meses, tomou emprestado em um banco que cobra nesse tipo de financiamento
juros simples antecipados à taxa de 2,5% ao mês.
"""


from semana2.simples import Simples

s = Simples()

# a) Qual a taxa real de juros paga?
taxa = 2.5
periodo = 6
taxa_real = s.taxa_efetiva(taxa, periodo)
print('{:.2f}%'.format(taxa_real))

# b) Qual o valor do empréstimo a ser tomado?
valor_capital = 1000
valor_emprestado = s.montante_pelo_capital(valor_capital, taxa_real, periodo)
print('R$ {:.2f}'.format(valor_emprestado))

# c) Qual o valor dos juros a ser pago?
juros = s.juros_por_capital(valor_emprestado, taxa, periodo)
print('R$ {:.2f}'.format(juros))

# d) Verifique se C = E - J
print(valor_capital == (valor_emprestado - juros))
