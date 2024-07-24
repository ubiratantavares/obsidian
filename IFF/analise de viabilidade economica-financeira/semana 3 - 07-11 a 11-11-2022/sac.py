"""
Amortização de empréstimos de longo prazo - Sistema de Amortização Constante - SAC

Esse método, como próprio nome diz, consiste em pagamentos de amortização de mesmo valor durante o financiamento.
Nesse caso, primeiramente calculamos as amortizações, depois é realizado o cálculo dos juros sobre o saldo devedor e,
por fim, obtém-se o valor das parcelas ao longo do prazo total de financiamento.
"""

class SAC:

    def calcular_prestacao(self, amortizacao, juros):
        return amortizacao + juros

    def calcular_amortizacao(self, capital, periodo):
        '''
        :param capital: valor financeiro do capital.
        :param periodo: período de empréstimo considerado.
        :return: retorna o valor financeiro da amortização.
        '''
        return capital/periodo

    def calcular_juros(self, saldo, taxa):
        '''
        :param saldo: valor financeiro do saldo devedor.
        :param amortizacao: valor financeiro da amortização.
        :return: retorna o juros.
        '''
        return saldo * taxa/100

    def calcular_saldo_devedor_atual(self, saldo_anterior, amortizacao):
        '''
        :param saldo_anterior: valor financeiro do saldo anterior.
        :param amortizacao: valor financeiro  da amortização.
        :return: retorna o valor financeiro do valor do saldo devedor atual.
        '''
        return saldo_anterior - amortizacao
