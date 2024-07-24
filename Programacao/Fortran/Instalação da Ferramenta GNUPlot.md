
Como instalar a ferramenta GNUplot no linux ubuntu 22.04?

Para instalar o GNUplot no Linux Ubuntu 22.04, você pode usar o gerenciador de pacotes `apt`. Siga os passos abaixo:

1. **Atualize a lista de pacotes:**

```sh
sudo apt update
```

2. **Instale o GNUplot:**

```sh
sudo apt install gnuplot
```

3. **Verifique a instalação:**

Após a instalação, você pode verificar se o GNUplot foi instalado corretamente executando o seguinte comando no terminal:

```sh
gnuplot --version
```

Isso deve exibir a versão do GNUplot instalada, confirmando que a instalação foi bem-sucedida.

### Passos Adicionais (Opcional)

- **Iniciar o GNUplot:**

Para iniciar o GNUplot, basta digitar `gnuplot` no terminal e pressionar Enter. Você verá o prompt do GNUplot onde pode começar a digitar comandos para plotar gráficos.

- **Saindo do GNUplot:**

Para sair do GNUplot, digite `quit` ou `exit` no prompt do GNUplot.

### Exemplo de Script GNUplot

Aqui está um exemplo de script GNUplot para plotar um gráfico simples:

1. **Crie um arquivo de dados, por exemplo, `dados.txt`:**

```sh
echo "0 0
1 1
2 4
3 9
4 16" > dados.txt
```

2. **Crie um script GNUplot, por exemplo, `plotar.gp`:**

```sh
nano plotar.gp
```

Adicione o seguinte conteúdo ao arquivo `plotar.gp`:

```gnuplot
set title "Exemplo de Gráfico"
set xlabel "x"
set ylabel "y"
plot "dados.txt" using 1:2 with lines title 'x^2'
```

3. **Execute o script GNUplot:**

```sh
gnuplot -persist plotar.gp
```

O comando `-persist` faz com que o gráfico permaneça na tela após o script ser executado.

Seguindo esses passos, você deverá conseguir instalar o GNUplot no Ubuntu 22.04 e começar a usá-lo para gerar gráficos.


Claro! Aqui está o código Fortran refatorado para modularizar as diferentes partes em funções:

```fortran
program gerar_dados
  implicit none
  integer, parameter :: n = 100
  real, dimension(n) :: xs, ys
  
  ! Gerando dados para a função y = sin(x)
  call gerar_dados_sin(n, xs, ys)
  
  ! Escrevendo os dados em um arquivo
  call escrever_dados('dados.txt', n, xs, ys)
  
  print *, 'Dados gerados em dados.txt'

contains

  subroutine gerar_dados_sin(n, xs, ys)
    integer, intent(in) :: n
    real, dimension(n), intent(out) :: xs, ys
    integer :: i
    real :: x, y

    do i = 1, n
      x = 2.0 * 3.14159 * (i - 1) / (n - 1)
      y = sin(x)
      xs(i) = x
      ys(i) = y
    end do
  end subroutine gerar_dados_sin

  subroutine escrever_dados(filename, n, xs, ys)
    character(len=*), intent(in) :: filename
    integer, intent(in) :: n
    real, dimension(n), intent(in) :: xs, ys
    integer :: i
    integer :: unit

    open(newunit=unit, file=filename, status='replace')
    do i = 1, n
      write(unit, *) xs(i), ys(i)
    end do
    close(unit)
  end subroutine escrever_dados

end program gerar_dados
```

### Explicação do Código

- **Subrotina `gerar_dados_sin`**: Esta subrotina gera os dados para a função \( y = \sin(x) \). Ela preenche os arrays `xs` e `ys` com os valores de \( x \) e \( \sin(x) \), respectivamente.
- **Subrotina `escrever_dados`**: Esta subrotina escreve os dados dos arrays `xs` e `ys` em um arquivo especificado pelo parâmetro `filename`.

### Passos para Rodar o Programa

1. **Compile o programa:**

```sh
gfortran -o gerar_dados gerar_dados.f90
```

2. **Execute o programa:**

```sh
./gerar_dados
```

Isso gerará o arquivo `dados.txt` com os dados da função \( y = \sin(x) \).


A sintaxe do comando `open` que você mencionou não está correta para as versões mais antigas de Fortran. A palavra-chave `newunit` é uma adição mais recente introduzida no Fortran 2008. 

Para garantir compatibilidade com versões anteriores, uma abordagem alternativa é usar um número de unidade explicitamente definido. Vamos corrigir isso:

### Código Corrigido

```fortran
program gerar_dados
  implicit none
  integer, parameter :: n = 100
  real, dimension(n) :: xs, ys

  ! Gerando dados para a função y = sin(x)
  call gerar_dados_sin(n, xs, ys)

  ! Escrevendo os dados em um arquivo
  call escrever_dados('dados.txt', n, xs, ys)

  print *, 'Dados gerados em dados.txt'

contains

  subroutine gerar_dados_sin(n, xs, ys)
    integer, intent(in) :: n
    real, dimension(n), intent(out) :: xs, ys
    integer :: i
    real :: x, y

    do i = 1, n
      x = 2.0 * 3.14159 * (i - 1) / (n - 1)
      y = sin(x)
      xs(i) = x
      ys(i) = y
    end do
  end subroutine gerar_dados_sin

  subroutine escrever_dados(filename, n, xs, ys)
    character(len=*), intent(in) :: filename
    integer, intent(in) :: n
    real, dimension(n), intent(in) :: xs, ys
    integer :: i
    integer :: unit

    ! Definindo uma unidade de arquivo arbitrária, como 10
    unit = 10

    open(unit=unit, file=filename, status='replace')
    do i = 1, n
      write(unit, *) xs(i), ys(i)
    end do
    close(unit)
  end subroutine escrever_dados

end program gerar_dados
```

### Explicação das Mudanças

- **Unidade de Arquivo**: Definimos explicitamente a unidade do arquivo como `10`. Isso evita o uso do `newunit`, garantindo compatibilidade com versões mais antigas do Fortran.
- **Sintaxe de `open`**: Usamos a sintaxe `open(unit=unit, file=filename, status='replace')` que é amplamente suportada.

### Passos para Rodar o Programa

1. **Compile o programa:**

```sh
gfortran -o gerar_dados gerar_dados.f90
```

2. **Execute o programa:**

```sh
./gerar_dados
```

Isso gerará o arquivo `dados.txt` com os dados da função \( y = \sin(x) \).


