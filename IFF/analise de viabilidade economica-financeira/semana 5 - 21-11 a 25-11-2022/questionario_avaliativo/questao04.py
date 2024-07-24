"""
Uma empresa localizada em Itaboraí-RJ está preocupada com o resultado de suas vendas nos últimos anos.

A receita no 1.º e no 2.º trimestre de 2022 tiveram, em relação à receita do último trimestre de 2021,
uma queda de 15% e 17,5%, respectivamente. Sabendo-se que a receita trimestral  no último trimestre de 2021
foi igual a R$ 140.000,00, é correto afirmar que a receita no fim do 2.º trimestre de 2022 foi igual a:
"""

receita_4tri_2021 = 140_000
print("R$ {:.2f}".format(receita_4tri_2021 * (1 - 17.5/100)))
