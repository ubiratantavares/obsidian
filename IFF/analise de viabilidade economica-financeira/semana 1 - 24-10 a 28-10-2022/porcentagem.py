def calcular_percentual(valor, valorTotal):
  '''
  :param valor: valor relativo a um determinado percentual do valor total.
  :param valorTotal: valor total
  :return: retorna a taxa percentual relativo ao valor.
  '''
  return (valor / valorTotal) * 100


def calcular_valorTotal(valor, percentual):
  '''
  :param valor: valor financeiro relativo ao percentual
  :param percentual: taxa percentual relativo ao valor
  :return: retorna o valor total relativo a 100%
  '''
  return valor/(percentual/100)


def calcular_valor(valorTotal, percentual):
  '''
  :param valorTotal:
  :param percentual:
  :return:
  '''


def calcular_taxa_percentual(valor_inicial, valor_final):
  '''
  :param valor_inicial: valor financeiro inicial
  :param valor_final: valor financeiro final
  :return: retorna a taxa percentual
  '''
  return ((valor_final - valor_inicial)/valor_inicial) * 100


def calcular_valor_final(valor_inicial, *taxas):
  '''
  :param valor_inicial: valor financeiro inicial
  :param taxas: taxas percentuais
  :return: valor financeiro final
  '''
  fator_multiplicador = 1.0
  for taxa in taxas:
    fator_multiplicador *= (1 + taxa/100)
  return valor_inicial * fator_multiplicador # B = P * (1 + i)


def calcular_valor_inicial(valor_final, *taxas):
  '''
  :param valor_final: valor financeiro final
  :param taxas: taxas percentuais
  :return: valor financeiro inicial
  '''
  fator_multiplicador = 1.0
  for taxa in taxas:
    fator_multiplicador *= (1 + taxa/100)
  return valor_final / fator_multiplicador # P = B / (1 + i)
