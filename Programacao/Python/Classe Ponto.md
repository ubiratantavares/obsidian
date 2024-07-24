
Você está desenvolvendo um software para manipulação de geometria computacional e precisa de uma forma de comparar objetos que representam pontos em um plano bidimensional. Crie uma classe Ponto com coordenadas x e y. Implemente por métodos mágicos os operadores menor que ($<$), menor ou igual ($\leq$), maior que ($>$) e maior ou igual ($\geq$) para comparar dois objetos Ponto com base na distância de cada ponto à origem do plano (0, 0). A distância de um ponto à origem é calculada pela fórmula $\sqrt{x^2 + y^2}$. Código Exemplo: class Ponto: def __init__(self, x, y): self.x = x self.y = y


Para implementar a classe `Ponto` com os métodos mágicos para comparar objetos `Ponto` com base na distância de cada ponto à origem, podemos definir os métodos `__lt__` (menor que), `__le__` (menor ou igual), `__gt__` (maior que) e `__ge__` (maior ou igual). A fórmula para a distância de um ponto à origem é $\sqrt{x^2 + y^2}$, mas como estamos apenas comparando distâncias, podemos evitar calcular a raiz quadrada para eficiência.

Aqui está o código da classe `Ponto`:

```python
import math

class Ponto:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def distancia_origem(self):
        return self.x**2 + self.y**2

    def __lt__(self, outro):
        return self.distancia_origem() < outro.distancia_origem()

    def __le__(self, outro):
        return self.distancia_origem() <= outro.distancia_origem()

    def __gt__(self, outro):
        return self.distancia_origem() > outro.distancia_origem()

    def __ge__(self, outro):
        return self.distancia_origem() >= outro.distancia_origem()

    def __str__(self):
        return f"({self.x}, {self.y})"

# Exemplo de uso
ponto1 = Ponto(1, 2)
ponto2 = Ponto(3, 4)
ponto3 = Ponto(1, 1)

print(ponto1 < ponto2)  # Output: True
print(ponto1 <= ponto3) # Output: False
print(ponto2 > ponto1)  # Output: True
print(ponto3 >= ponto1) # Output: False
```

### Explicação

1. **Inicialização (`__init__`)**: O método `__init__` inicializa as coordenadas `x` e `y` do ponto.

2. **Distância à origem (`distancia_origem`)**: Este método calcula a distância do ponto à origem, mas sem a raiz quadrada, retornando \(x^2 + y^2\). A raiz quadrada não é necessária para comparação.

3. **Métodos mágicos de comparação**:
    - `__lt__` (menor que): Compara a distância à origem dos dois pontos.
    - `__le__` (menor ou igual): Compara a distância à origem dos dois pontos.
    - `__gt__` (maior que): Compara a distância à origem dos dois pontos.
    - `__ge__` (maior ou igual): Compara a distância à origem dos dois pontos.

4. **Representação em string (`__str__`)**: Este método retorna uma representação em string das coordenadas do ponto, útil para debug e impressão.

### Exemplo de uso

O código cria três objetos `Ponto` com diferentes coordenadas e usa os operadores de comparação para verificar as relações entre eles com base na distância à origem.