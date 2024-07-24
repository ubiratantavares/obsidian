"""
Amortização de empréstimos de longo prazo - Método Francês ou Tabela Price

Esse método é bastante empregado no Brasil. Consiste em um sistema de amortização utilizando pagamentos em parcelas
constantes ao longo de todo o prazo de pagamento do empréstimo.
"""

class Price:

    def calcular_prestacao(self, capital, taxa, periodo):
        '''
        :param capital: valor financeiro do capital.
        :param taxa: taxa de juros.
        :param periodo: periodo de aplicação da taxa de juros.
        :return: retorna o valor financeiro da prestacao
        '''
        fator = (1 + taxa / 100) ** periodo
        return ((capital * taxa / 100 * fator) / (fator - 1))

    def calcular_amortizacao(self, prestacao, juros):
        return(prestacao - juros)

    def calcular_juros(self, saldo, taxa, periodo=1):
        return (saldo * taxa/100 * periodo)

    def calcular_saldo_devedor(self, capital, prestacao):
        return capital - prestacao
