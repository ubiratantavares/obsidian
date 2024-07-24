"""
Amortização de empréstimos de curto prazo

I - amortização de empréstimos a juros simples (postecipados): nessa metodologia o repagamentodo capital emprestado
(ou amortização) acrescido dos juros é feito em uma única parcela no fim do prazo acordado entre as partes.

Nesse caso, calcula-se o valor do monatnte a juros simples

Exemplo: Suponha que determinada empresa, para executar uma expansão em suas vendas, toma um empréstimo junto
a uma instituição financeira no valor de R$ 100.000,00 a uma taxa de juros de 4% a.m., a ser pago no final de 5 meses.
Qual o valor total a ser pago no fim do período?
"""

from semana2.simples import Simples

s = Simples()

print("R$ {:.2f}".format(s.montante_pelo_capital(100_000, 4, 5)))

"""
O valor financeiro obtido é o valor a ser pago. Os juros totais do empréstimo é a diferença entre o valor futuro
e o valor presente. Neste caso, os juros são pagos postecipadamente, isto é, no final do prazo de financiamento.
"""
