class Simples:

  def juros_por_capital(self, capital, taxa, periodo):
    '''
    :param capital: valor financeiro do capital.
    :param taxa: taxa de juros.
    :param periodo: periodo de aplicação da taxa.
    :return: retorna o valor financeiro do juros.
    '''
    return capital * taxa/100 * periodo

  def juros_por_montante(self, montante, capital):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :return: retorna o valor financeiro do juros.
    '''
    return montante - capital

  def taxa_por_capital(self, juros, capital, periodo):
    '''
    :param juros: valor financeiro do juros.
    :param capital: valor financeiro do capital.
    :param periodo: periodo de aplicação da taxa.
    :return: retorna a taxa de juros.
    '''
    return (juros/(capital * periodo))*100

  def taxa_por_montante(self, montante, capital, periodo):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :param periodo: periodo de aplicação da taxa.
    :return: retorna a taxa de juros.
    '''
    return ((montante - capital)/(capital * periodo))*100

  def periodo_por_capital(self, capital, juros, taxa):
    '''
    :param capital: valor financeiro do capital.
    :param juros: valor financeiro do juros.
    :param taxa: taxa de juros.
    :return: retorna o periodo de aplicação da taxa.
    '''
    return juros/(capital * taxa/100)

  def periodo_por_montante(self, montante, capital, taxa):
    '''
    :param montante: valor financeiro do montante.
    :param capital: valor financeiro do capital.
    :param taxa: taxa de juros
    :return: retorna o periodo de aplicação da taxa.
    '''
    return (montante - capital)/(capital * taxa/100)

  def capital_por_juros(self, juros, taxa, periodo):
    '''
    :param juros: valor financeiro do juros.
    :param taxa: taxa de juros.
    :param periodo: periodo de aplicação da taxa.
    :return: retorna o valor financeiro do capital.
    '''
    return juros/(taxa/100 * periodo)


  def capital_por_montante(self, montante, taxa, periodo=1):
    return montante / (1 + taxa/100 * periodo)


  def montante_pelo_capital(self, capital, taxa, periodo):
    '''
    :param capital: valor financeiro do capital.
    :param taxa: taxa de juros.
    :param periodo: periodo de aplicação da taxa.
    :return: retorna o valor financeiro do montante.
    '''
    return capital * (1 + taxa/100 * periodo)

  def montante_pelo_juros(self, capital, juros):
    '''
    :param capital: valor financeiro do capital.
    :param juros: valor finaneiro do juros.
    :return: retorna o valor financeiro do montante.
    '''
    return capital + juros


  def taxa_efetiva(self, taxa_nominal, periodo):
    '''
    :param taxa_nominal: valor da taxa nominal
    :param periodo: periodo de aplicação.
    :return: retorna a taxa efetiva da aplicação.
    '''
    return ((taxa_nominal/100) / (1 - taxa_nominal/100 * periodo))*100

  def taxa_por_montantes(self, montante1, montante2, periodo1, periodo2):
    """
    :param montante1:
    :param montante2:
    :param periodo1:
    :param periodo2:
    :return:
    :obs:

    m1 = c * (1 + t * n1) => c = m1 / (1 + t * n1)
    m2 = c * (1 + t * n2) => c = m2 / (1 + t * n2)

    m1 / (1 + t * n1) = m2 / (1 + t * n2) => m1 * (1 + t * n2) = m2 * (1 + t * n1)

    t = ((m2 - m1) / (m1 * n2 - m2 * n1))*100
    """
    return ((montante2 - montante1) / (montante1 * periodo2 - montante2 * periodo1))*100
