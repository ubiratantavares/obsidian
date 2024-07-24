# 6. Mário aplicou suas economias, a juros simples comerciais, em um banco, a uma taxa de 15% a.a.,
# durante 2 anos. Findo o prazo reaplicou montante e mais 2.000,00 de suas novas economias,
# por mais 4 anos, à taxa de 20% a.a., sob mesmo regime de capitalização.
# Admitindo-se os juros das aplicações somaram 18.216,00, qual era o capital inicial da primeira aplicação?

from semana2.simples import Simples

s = Simples()

'''
18.216 = (C ∙ 0,15 ∙ 2) + [(C + (C ∙ 0,15 ∙ 2) + 2000) ∙ 0,2 ∙ 4]

18.216 = 0,3C + [(1,3C + 2000) ∙ 0,8]

18.216 = 0,3C + 1,04C + 1600

16.616 = 1,34C

16.616 = C * (1 + 0.34)
'''

capital = s.capital_por_montante(16_616, 34)
print('RS {:.2f}'.format(capital))

