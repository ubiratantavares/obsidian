
Em um aplicativo de gerenciamento de contas de usuário, é necessário validar números de telefone antes de salvá-los no banco de dados. Crie uma classe Validador que inclua um método estático valida_telefone. Este método deve aceitar uma string representando o número de telefone e retornar True se o número estiver em um formato válido e False caso contrário. Considere um número de telefone como válido se ele contiver exatamente 11 dígitos numéricos. Código Exemplo: class Validador: ... >>Validador.valida_telefone('21000000000') True >>Validador.valida_telefone('210000-0000') False >>Validador.valida_telefone('21 0000-0000') False


Para implementar a classe `Validador` com o método estático `valida_telefone`, podemos utilizar expressões regulares (regex) para verificar se a string fornecida contém exatamente 11 dígitos numéricos. Aqui está como você pode fazer isso:

```python
import re

class Validador:
    @staticmethod
    def valida_telefone(telefone):
        # Define a expressão regular para verificar se a string contém exatamente 11 dígitos
        padrao = re.compile(r'^\d{11}$')
        # Verifica se o telefone corresponde ao padrão
        if padrao.match(telefone):
            return True
        return False

# Exemplo de uso
print(Validador.valida_telefone('21000000000'))  # Output: True
print(Validador.valida_telefone('210000-0000'))  # Output: False
print(Validador.valida_telefone('21 0000-0000')) # Output: False
```

### Explicação

1. **Importação do módulo `re`**: O módulo `re` fornece suporte para expressões regulares em Python.

2. **Método estático `valida_telefone`**: Este método é decorado com `@staticmethod` para indicar que ele não depende de instâncias da classe `Validador`.

3. **Expressão regular**: `r'^\d{11}$'`:
    - `^` indica o início da string.
    - `\d` corresponde a qualquer dígito numérico.
    - `{11}` indica que deve haver exatamente 11 dígitos.
    - `$` indica o fim da string.
   
4. **Uso do método `match`**: O método `match` da expressão regular verifica se a string fornecida corresponde exatamente ao padrão definido.

5. **Retorno de `True` ou `False`**: O método retorna `True` se a string corresponde ao padrão (ou seja, contém exatamente 11 dígitos) e `False` caso contrário.

Este método estático pode ser usado para validar números de telefone conforme o exemplo fornecido, garantindo que apenas strings com exatamente 11 dígitos numéricos sejam consideradas válidas.