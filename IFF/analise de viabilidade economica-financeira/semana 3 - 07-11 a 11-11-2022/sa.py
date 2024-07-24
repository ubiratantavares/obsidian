"""
Amortização de empréstimos de longo prazo - Sistema Americano

Nesse método a cada período somente os juros são pagos, sem que nenhuma quantia referente a amortização incida sobre
o saldo devedor. Nessas condições, o capital tomado como empréstimo é amortizado integralmente ao final do período.
Aqui, as parcelas correspondem aos juros, os quais são durante o período.
"""

class SA:

    def calcular_prestacao(self, amortizacao, juros):
        return amortizacao + juros


    def calcular_amortizacao(self, saldo_devedor, parcela, periodo):
        '''
        :param capital: valor financeiro do capital.
        :param periodo: período de empréstimo considerado.
        :return: retorna o valor financeiro da amortização.
        '''
        if parcela < periodo:
            return 0.0
        else:
            return saldo_devedor


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