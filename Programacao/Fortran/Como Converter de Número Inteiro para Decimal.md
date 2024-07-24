
Em Fortran, quando você realiza a divisão entre dois números inteiros, o resultado também será um número inteiro, truncado para a parte inteira. Para obter um número decimal (de ponto flutuante) como resultado, você precisa converter pelo menos um dos operandos para ponto flutuante antes de realizar a divisão.

Aqui está como você pode fazer isso:

### Exemplo

Vamos supor que você queira dividir `a` por `b` e que ambos sejam inteiros. Você pode usar a função `real` para converter um dos operandos (ou ambos) para ponto flutuante:

```fortran
program divisao_decimal
  implicit none
  integer :: a, b
  real :: resultado

  ! Inicializando os inteiros
  a = 5
  b = 2

  ! Convertendo os inteiros para real para obter divisão decimal
  resultado = real(a) / real(b)

  print *, 'O resultado de', a, '/', b, 'é', resultado
end program divisao_decimal
```

### Explicação

1. **Declaração de Variáveis:**
   - `a` e `b` são declarados como inteiros.
   - `resultado` é declarado como real para armazenar o resultado da divisão.

2. **Inicialização:**
   - Os valores de `a` e `b` são definidos.

3. **Conversão e Divisão:**
   - `real(a)` e `real(b)` convertem `a` e `b` de inteiros para números de ponto flutuante, respectivamente.
   - A divisão `real(a) / real(b)` agora resulta em um número decimal.

4. **Impressão do Resultado:**
   - O resultado é impresso mostrando que a divisão entre inteiros retorna um número decimal.

### Alternativa

Outra maneira é converter apenas um dos operandos para ponto flutuante:

```fortran
program divisao_decimal_alternativa
  implicit none
  integer :: a, b
  real :: resultado

  ! Inicializando os inteiros
  a = 5
  b = 2

  ! Convertendo um dos inteiros para real para obter divisão decimal
  resultado = real(a) / b  ! Ou: resultado = a / real(b)

  print *, 'O resultado de', a, '/', b, 'é', resultado
end program divisao_decimal_alternativa
```

Convertendo apenas `a` ou `b` para ponto flutuante, Fortran fará a divisão em ponto flutuante e retornará um número decimal. 

Ambos os métodos são válidos e o resultado será o mesmo.