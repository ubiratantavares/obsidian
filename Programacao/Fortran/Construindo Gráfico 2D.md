
É possível plotar algum gráfico 2D usando a linguagem fortran?

Sim, é possível plotar gráficos 2D usando Fortran, mas normalmente isso é feito em conjunto com bibliotecas ou ferramentas externas. Aqui estão algumas opções que você pode considerar:

### 1. **GNUplot**

GNUplot é uma ferramenta de plotagem poderosa que pode ser chamada a partir de programas Fortran. A ideia é gerar os dados em Fortran e então usar GNUplot para visualizá-los.

**Exemplo: Usando GNUplot com Fortran**

1. **Gerar Dados em Fortran:**

```fortran
program gerar_dados
  implicit none
  integer :: i
  real :: x, y
  integer, parameter :: n = 100
  real, dimension(n) :: xs, ys
  
  ! Gerando dados para a função y = sin(x)
  do i = 1, n
    x = 2.0 * 3.14159 * (i - 1) / (n - 1)
    y = sin(x)
    xs(i) = x
    ys(i) = y
  end do
  
  ! Escrevendo os dados em um arquivo
  open(unit=10, file='dados.txt')
  do i = 1, n
    write(10, *) xs(i), ys(i)
  end do
  close(10)
  
  print *, 'Dados gerados em dados.txt'
end program gerar_dados
```

2. **Plotar com GNUplot:**

Crie um script GNUplot, por exemplo `plotar.gp`:

```gnuplot
set title "Plot de y = sin(x)"
set xlabel "x"
set ylabel "y"
plot "dados.txt" using 1:2 with lines title 'sin(x)'
pause -1
```

Execute GNUplot no terminal:

```sh
gnuplot plotar.gp
```

### 2. **PLplot**

PLplot é uma biblioteca de plotagem que pode ser usada diretamente a partir de programas Fortran. 

**Instalar PLplot:**

- **No Ubuntu/Debian:**
  ```sh
  sudo apt-get install plplot11-driver-cairo plplot11-driver-xwin plplot11-dev
  ```

- **No macOS:**
  ```sh
  brew install plplot
  ```

**Exemplo: Usando PLplot com Fortran**

```fortran
program plplot_example
  use plplot
  implicit none
  
  integer :: i, n
  real, dimension(100) :: x, y
  
  call plstar(1, 1)
  call plenv(0.0, 2.0 * 3.14159, -1.0, 1.0, 0, 0)
  call pllab('x', 'sin(x)', 'Plot de y = sin(x)')
  
  n = 100
  do i = 1, n
    x(i) = 2.0 * 3.14159 * (i - 1) / (n - 1)
    y(i) = sin(x(i))
  end do
  
  call plline(n, x, y)
  call plend
  
end program plplot_example
```

### 3. **DISLIN**

DISLIN é uma biblioteca de gráficos de alto nível que suporta várias linguagens, incluindo Fortran.

**Instalar DISLIN:**

Baixe a biblioteca DISLIN do [site oficial](https://www.dislin.de/) e siga as instruções de instalação.

**Exemplo: Usando DISLIN com Fortran**

```fortran
program dislin_example
  implicit none
  integer :: i, n
  real, dimension(100) :: x, y
  
  call disini()
  call name('x', 'X')
  call name('sin(x)', 'Y')
  call titlin('Plot de y = sin(x)', 2)
  
  n = 100
  do i = 1, n
    x(i) = 2.0 * 3.14159 * (i - 1) / (n - 1)
    y(i) = sin(x(i))
  end do
  
  call qplot(x, y, n)
  call disfin()
  
end program dislin_example
```

### Resumo

Usar Fortran para gerar gráficos pode exigir a integração com ferramentas ou bibliotecas externas, como GNUplot, PLplot ou DISLIN. Essas ferramentas permitem gerar gráficos 2D de maneira eficiente e oferecem diversas opções de visualização. Escolha a ferramenta que melhor se adapta às suas necessidades e siga os exemplos fornecidos para começar.

Para adicionar um grid no arquivo `plotar.gp` do GNUplot, você precisa usar o comando `set grid`. Esse comando configura a exibição de linhas de grade nos gráficos, facilitando a visualização e interpretação dos dados.

Aqui está um exemplo de como adicionar um grid ao script `plotar.gp`:

### Script `plotar.gp` com Grid

```gnuplot
set title "Exemplo de Gráfico"
set xlabel "x"
set ylabel "y"
set grid
plot "dados.txt" using 1:2 with lines title 'x^2'
```

### Explicação

- **set title "Exemplo de Gráfico"**: Define o título do gráfico.
- **set xlabel "x"**: Define o rótulo do eixo x.
- **set ylabel "y"**: Define o rótulo do eixo y.
- **set grid**: Ativa a exibição do grid no gráfico.
- **plot "dados.txt" using 1:2 with lines title 'x^2'**: Plota os dados do arquivo `dados.txt`, usando a primeira coluna para o eixo x e a segunda para o eixo y, conectando os pontos com linhas e adicionando um título à linha do gráfico.

### Executando o Script GNUplot

1. Certifique-se de que o arquivo `dados.txt` contém os dados necessários. Por exemplo:

```sh
echo "0 0
1 1
2 4
3 9
4 16" > dados.txt
```

2. Crie ou edite o arquivo `plotar.gp` com o conteúdo fornecido acima.

3. Execute o script GNUplot no terminal:

```sh
gnuplot -persist plotar.gp
```

O comando `-persist` faz com que o gráfico permaneça na tela após a execução do script.

Com isso, o gráfico gerado incluirá um grid, facilitando a leitura e análise dos dados.