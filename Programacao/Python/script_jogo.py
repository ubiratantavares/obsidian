class Jogo:
    def __init__(self, hora_inicio, hora_fim):
        self.hora_inicio = hora_inicio
        self.hora_fim = hora_fim

    def calcular_duracao(self):
        if self.hora_inicio == self.hora_fim:
            return 24
        elif self.hora_inicio < self.hora_fim:
            return self.hora_fim - self.hora_inicio
        else:
            return 24 - self.hora_inicio + self.hora_fim

    def exibir_duracao(self):
        duracao = self.calcular_duracao()
        print(f"O JOGO DUROU {duracao} HORA(S)")


hora_inicio, hora_fim = map(int, input().split())
jogo = Jogo(hora_inicio, hora_fim)
jogo.exibir_duracao()

