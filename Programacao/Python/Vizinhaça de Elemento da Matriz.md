
Crie em linguagem python através de funções para que seja: 1. lido uma única linha da entrada padrão contendo as duas dimensões de uma matriz bidimensional de números inteiros, bem como os valores mínimo e máximo dos valores a serem gerados aleatoriamente para as células da matriz. 2. gerado uma matriz com as dimensões informadas e cada célula com um valor aleatório dentro do intervalo dos valores mínimo e máximo fornecidos 3. mostrado o conteúdo da matriz 4. escrito qual o posicionamento da célula da matriz que possua maior soma de vizinhança imediata, bem como o valor desta maior soma. Caso haja empate, escreva todas as células que tenham esta maior soma. {REGRAS} 1. Vizinhaça imediata de uma célula (i, j) de uma matriz bidimensional é dada por células, caso existam: 1.1 (i - 1, j - 1) 1.2 (i - 1, j) 1.3 (i - 1, j + 1) 1.4 (i, j - 1) 1.5 (i, j + 1) 1.6 (i + 1, j - 1) 1.7 (i + 1, j) 1.8 (i + 1, j + 1) 2. Existem células que só possuem 3 vizinhos, outras células possuem 5 vizinhos e as demais possuem 8 vizinhos.

Aqui está uma implementação em Python que atende aos requisitos descritos:

```python
import random

def ler_entrada():
    entrada = input("Digite as dimensões da matriz e os valores mínimo e máximo (ex: 3 3 1 10): ")
    linhas, colunas, valor_min, valor_max = map(int, entrada.split())
    return linhas, colunas, valor_min, valor_max

def gerar_matriz(linhas, colunas, valor_min, valor_max):
    matriz = []
    for _ in range(linhas):
        linha = [random.randint(valor_min, valor_max) for _ in range(colunas)]
        matriz.append(linha)
    return matriz

def mostrar_matriz(matriz):
    for linha in matriz:
        print(" ".join(map(str, linha)))

def calcular_vizinhanca(matriz, i, j):
    linhas = len(matriz)
    colunas = len(matriz[0])
    vizinhos = [
        (i - 1, j - 1), (i - 1, j), (i - 1, j + 1),
        (i, j - 1), (i, j + 1),
        (i + 1, j - 1), (i + 1, j), (i + 1, j + 1)
    ]
    soma = 0
    for vi, vj in vizinhos:
        if 0 <= vi < linhas and 0 <= vj < colunas:
            soma += matriz[vi][vj]
    return soma

def encontrar_maior_soma_vizinhanca(matriz):
    linhas = len(matriz)
    colunas = len(matriz[0])
    max_soma = float('-inf')
    posicoes = []
    
    for i in range(linhas):
        for j in range(colunas):
            soma = calcular_vizinhanca(matriz, i, j)
            if soma > max_soma:
                max_soma = soma
                posicoes = [(i, j)]
            elif soma == max_soma:
                posicoes.append((i, j))
    
    return posicoes, max_soma

def main():
    linhas, colunas, valor_min, valor_max = ler_entrada()
    matriz = gerar_matriz(linhas, colunas, valor_min, valor_max)
    print("Matriz gerada:")
    mostrar_matriz(matriz)
    posicoes, max_soma = encontrar_maior_soma_vizinhanca(matriz)
    print(f"Posições com maior soma de vizinhança ({max_soma}):")
    for pos in posicoes:
        print(f"Posição: {pos}")

if __name__ == "__main__":
    main()
```

### Explicação do Código
1. **ler_entrada**: Lê a entrada padrão e retorna as dimensões da matriz e os valores mínimo e máximo para os números gerados aleatoriamente.
2. **gerar_matriz**: Gera uma matriz bidimensional com valores aleatórios dentro do intervalo fornecido.
3. **mostrar_matriz**: Mostra a matriz no console.
4. **calcular_vizinhanca**: Calcula a soma da vizinhança imediata para uma célula específica na matriz.
5. **encontrar_maior_soma_vizinhanca**: Encontra a(s) célula(s) com a maior soma de vizinhança imediata e retorna suas posições e o valor dessa soma.
6. **main**: Função principal que executa o programa. 

Basta rodar o código em um ambiente Python, inserir os valores conforme o formato esperado, e ele exibirá a matriz gerada e as posições com a maior soma de vizinhança.


Claro! Abaixo está o código refatorado para o paradigma de programação orientado a objetos:

```python
import random

class Matriz:
    def __init__(self, linhas, colunas, valor_min, valor_max):
        self.linhas = linhas
        self.colunas = colunas
        self.valor_min = valor_min
        self.valor_max = valor_max
        self.matriz = self.gerar_matriz()

    def gerar_matriz(self):
        matriz = []
        for _ in range(self.linhas):
            linha = [random.randint(self.valor_min, self.valor_max) for _ in range(self.colunas)]
            matriz.append(linha)
        return matriz

    def mostrar_matriz(self):
        for linha in self.matriz:
            print(" ".join(map(str, linha)))

    def calcular_vizinhanca(self, i, j):
        vizinhos = [
            (i - 1, j - 1), (i - 1, j), (i - 1, j + 1),
            (i, j - 1), (i, j + 1),
            (i + 1, j - 1), (i + 1, j), (i + 1, j + 1)
        ]
        soma = 0
        for vi, vj in vizinhos:
            if 0 <= vi < self.linhas and 0 <= vj < self.colunas:
                soma += self.matriz[vi][vj]
        return soma

    def encontrar_maior_soma_vizinhanca(self):
        max_soma = float('-inf')
        posicoes = []
        for i in range(self.linhas):
            for j in range(self.colunas):
                soma = self.calcular_vizinhanca(i, j)
                if soma > max_soma:
                    max_soma = soma
                    posicoes = [(i, j)]
                elif soma == max_soma:
                    posicoes.append((i, j))
        return posicoes, max_soma

class SistemaMatriz:
    def __init__(self):
        self.linhas, self.colunas, self.valor_min, self.valor_max = self.ler_entrada()
        self.matriz = Matriz(self.linhas, self.colunas, self.valor_min, self.valor_max)

    def ler_entrada(self):
        entrada = input("Digite as dimensões da matriz e os valores mínimo e máximo (ex: 3 3 1 10): ")
        linhas, colunas, valor_min, valor_max = map(int, entrada.split())
        return linhas, colunas, valor_min, valor_max

    def executar(self):
        print("Matriz gerada:")
        self.matriz.mostrar_matriz()
        posicoes, max_soma = self.matriz.encontrar_maior_soma_vizinhanca()
        print(f"Posições com maior soma de vizinhança ({max_soma}):")
        for pos in posicoes:
            print(f"Posição: {pos}")

if __name__ == "__main__":
    sistema = SistemaMatriz()
    sistema.executar()
```

### Explicação do Código

1. **Classe `Matriz`**:
   - **__init__**: Inicializa a matriz com as dimensões e valores fornecidos.
   - **gerar_matriz**: Gera a matriz com valores aleatórios.
   - **mostrar_matriz**: Exibe a matriz.
   - **calcular_vizinhanca**: Calcula a soma da vizinhança imediata para uma célula específica.
   - **encontrar_maior_soma_vizinhanca**: Encontra a(s) célula(s) com a maior soma de vizinhança imediata.

2. **Classe `SistemaMatriz`**:
   - **__init__**: Inicializa o sistema lendo a entrada do usuário e criando uma instância da classe `Matriz`.
   - **ler_entrada**: Lê a entrada do usuário.
   - **executar**: Executa o sistema, exibindo a matriz e as posições com a maior soma de vizinhança.

### Como Usar
Basta rodar o código em um ambiente Python, inserir os valores conforme o formato esperado, e ele exibirá a matriz gerada e as posições com a maior soma de vizinhança.


