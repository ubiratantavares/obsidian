Você está criando uma biblioteca matemática para manipulação de números complexos em um projeto de software científico. Números complexos são formados por uma parte real e uma parte imaginária. Em Python, você decide utilizar programação orientada a objetos para esta tarefa. Crie uma classe NumeroComplexo que inicializa com valores para as partes real e imaginária e implemente um método mágico na classe NumeroComplexo para permitir a soma de dois números complexos. A soma de dois números complexos (a + bi) e (c + di) é dada por (a+c) + (b+d)i. class NumeroComplexo: def __init__(self, real, imaginario): self.real = real self.imaginario = imaginario

Para criar a classe `NumeroComplexo` com suporte para a soma de números complexos em Python, você pode utilizar o método mágico `__add__`. Aqui está um exemplo de como você pode implementar isso:

```python
class NumeroComplexo:
    def __init__(self, real, imaginario):
        self.real = real
        self.imaginario = imaginario

    def __add__(self, outro):
        return NumeroComplexo(self.real + outro.real, self.imaginario + outro.imaginario)

    def __str__(self):
        return f"{self.real} + {self.imaginario}i"

# Exemplo de uso
num1 = NumeroComplexo(3, 2)
num2 = NumeroComplexo(1, 7)

resultado = num1 + num2
print(resultado)  # Output: 4 + 9i
```

### Explicação

1. **Inicialização (`__init__`)**: O método `__init__` é o construtor da classe. Ele recebe dois parâmetros, `real` e `imaginario`, que representam as partes real e imaginária do número complexo, respectivamente.

2. **Soma (`__add__`)**: O método mágico `__add__` é utilizado para definir o comportamento do operador `+`. Ele recebe dois objetos da classe `NumeroComplexo` e retorna um novo objeto da mesma classe, cujas partes real e imaginária são a soma das partes reais e imaginárias dos objetos originais.

3. **Representação em string (`__str__`)**: O método `__str__` é utilizado para definir a representação em string do objeto, permitindo que ele seja impresso de forma legível.

### Exemplo de uso

O código cria dois objetos `NumeroComplexo` com valores diferentes e utiliza o operador `+` para somá-los, resultando em um novo objeto que representa a soma dos dois números complexos. A função `print` então exibe o resultado na forma "a + bi".