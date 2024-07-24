import math

class Compostos:

  def juros_por_capital(self, capital, taxa, periodo):
    '''
    :param capital: valor financeiro do capital.
    :param taxa: valor da taxa de juros.
    :param periodo: valor do periodo de aplicação da taxa.
    :return: retorna o valor financeiro do juros acumulados no periodo.
    '''
    return capital * ((1 + taxa/100)**periodo - 1)

  def juros_por_montante(self, montante, capital):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :return: retorna o valor financeiro do juros acumulados no periodo.
    '''
    return montante - capital

  def montante_pelo_capital(self, capital, taxa, periodo):
    '''
    :param capital: valor financeiro do capital.
    :param taxa: valor da taxa de juros.
    :param periodo: valor do periodo de aplicação da taxa.
    :return: retorna o valor financeiro do montante.
    '''
    return capital * (1 + taxa/100)**periodo

  def montante_pelo_capital_e_juros(self, capital, juros):
    '''
    :param capital: valor financeiro do capital.
    :param juros: valor financeiro do juros.
    :return: retorna o valor financeiro do montante.
    '''
    return capital +  juros

  def capital_pelo_montante(self, montante, taxa, periodo):
    '''
    :param montante: valor financeiro do montante.
    :param taxa: valor da taxa de juros.
    :param periodo: valor do periodo de aplicação da taxa.
    :return: retorna o valor financeiro do capital.
    '''
    return (montante) / ((1 + taxa/100)**periodo)

  def taxa(self, montante, capital, periodo):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :param periodo: valor do periodo de aplicação da taxa.
    :return: retorna a taxa de juros
    '''

    return (montante/capital)**(1/periodo) - 1

  def periodo(self, montante, capital, taxa):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :param taxa: valor da taxa de juros.
    :return: retorna o periodo de aplicação.
    '''
    return math.log10(montante/capital)/math.log10(1 + taxa/100)

  def periodo_montantes_iguais(self, capital1, capital2, taxa1, taxa2):
    '''
    :param capital1: valor financeiro do capital1.
    :param capital2: valor financeiro do capital2.
    :param taxa1: taxa de juros para o capital1.
    :param taxa2: taxa de juros para o capital2.
    :return: retorna o periodo relativo para o caso dos montantes serem iguais.
    '''
    return math.log10(capital1 / capital2)/math.log10((1 + taxa2/100) / (1 + taxa1/100))

  def taxa_efetiva(self, taxa_nominal, periodo_equivalente, periodo):
    '''
    :param taxa_nominal: valor da taxa nominal
    :param periodo_equivalente: periodo equivalente
    :param periodo: periodo de aplicação.
    :return: retorna a taxa efetiva da aplicação.
    '''
    return ((1 + taxa_nominal/100)**(periodo_equivalente/periodo) - 1) * 100