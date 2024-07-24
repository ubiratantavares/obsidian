# 3. Um empresário obteve um empréstimo de R$ 25.000,00 de uma instituição financeira, por certo período.
# Na liberação do empréstimo, pagou antecipadamente, como previa o contrato, 22% de taxa.
# Qual o valor pago de juros a essa taxa? Qual a quantia efetivamente liberada? Considerando a quantia
# liberada como empréstimo, qual foi a taxa efetiva de juros?

from semana2.simples import Simples

s = Simples()

capital = 25_000

# taxa ao ano
taxa = 22

# periodo em ano
periodo = 1

# Qual o valor pago de juros a essa taxa?
juros = s.juros_por_capital(capital, taxa, periodo)
print('R$ {:.2f}'.format(juros))

# Qual a quantia efetivamente liberada?
quantia_liberada = capital - juros
print('R$ {:.2f}'.format(quantia_liberada))

# taxa efetiva de juros
taxa = s.taxa_por_capital(juros, quantia_liberada, periodo)
print('{:.2f}% '.format(taxa))
