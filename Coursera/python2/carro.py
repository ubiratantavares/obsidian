class Carro:    
    def __init__(self, modelo, ano, cor, velocidademaxima):
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
        self.velocidade = 0
        self.velocidademaxima = velocidademaxima
        
    def imprima(self):
        if self.velocidade == 0:
            print('%s %s %d' %(self.modelo, self.cor, self. ano))
        elif self.velocidade < self.velocidademaxima:
            print('%s %s indo a %d km/h' %(self.modelo, self.cor, self.velocidade))
        else:
            print('%s %s indo muito raaaapiiiiiidoooooo!' %(self.modelo, self.cor))
        
    def acelere(self, velocidade):
        self.velocidade = velocidade
        if self.velocidade > self.velocidademaxima:
            self.velocidade = self.velocidademaxima
        self.imprima()
        
    def pare(self):
        self.velocidade = 0
        self.imprima()

def main():
    carro1 = Carro('Brasilia', 1968, 'Amarela', 80)
    carro2 = Carro('Fuscão', 1981, 'Preto', 95)
    
    carro1.acelere(40)
    carro2.acelere(50)
    carro1.acelere(80)
    carro1.pare()
    carro2.acelere(100)
    
if __name__ == '__main__':
    main() 

