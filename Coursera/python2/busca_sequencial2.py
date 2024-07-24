# -*- coding: utf-8 -*-

class Musica:
    
    def __init__(self, titulo, interprete, compositor, ano):
        self.titulo = titulo
        self.interprete = interprete
        self.compositor = compositor
        self.ano = ano
    
class Buscador:
    
    def playlist(self):
        lista = [Musica('Ponta da Areia', 'Milton Nascimento', 'Milton Nascimento', 1975),
                 Musica('Podres Poderes', 'Caetano Veloso', 'Caetano Veloso', 1984),
                 Musica('Baby', 'Gal Costa', 'Caetano Veloso', 1969)]
        return lista
    
    def busca_por_titulo(self, playlist, titulo):
        for i in range(len(self.playlist())):
            if playlist[i].titulo == titulo:
                return i
        return -1   
    
    def mensagem(self, titulo):
        indice = self.busca_por_titulo(self.playlist(), titulo)        
        if indice == -1:
            return 'Minha música preferida não está na playlist'
        else:
            preferida = self.playlist()[indice]
            return preferida.titulo + ', ' + preferida.interprete + ', ' + preferida.compositor + ', ' + str(preferida.ano)
    
if __name__ == '__main__':
    titulo = input('Digite o titulo da música a ser pesquisada: ')    
    b = Buscador()
    print(b.mensagem(titulo))