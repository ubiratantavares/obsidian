
## 1. Conceitos Básicos

### 1.1 Introdução

<p style="text-align: justify;">
O FORTRAN (FORmula TRANslation) é uma linguagem simples cujo vocabulário consiste de um conjunto de palavras, conhecidas como "palavras-chave". Um comando FORTRAN é uma sentença escrita nesta linguagem. Um programa consiste numa sequência de comandos, cada um escrito numa linha.
</p>
### 1.2 Definições

- **Programa principal**: é uma unidade que pode chamar outras unidades de programa, mas que não pode ser chamado por estas. O programa principal é quem recebe o controle da execução no início da fase de execução.
- **Subprograma**: é uma unidade de programa que é chamada por outra unidade do programa. Pode ser de dois tipos: sub-rotina ou função. Usualmente um subprograma recebe parâmetros de entrada e retorna parâmetros de saída.
- **Função intrínseca**: é uma função suprida pelo compilador e que realiza operações sobre números ou caracteres.
- **Programa executável**: é um programa já em linguagem de máquina que pode ser executado pelo computador. Consiste de um programa principal e subprogramas.
- **Comando executável**: é aquele que efetua cálculos, testes, providencia entrada ou saída de dados, altera o fluxo de execução ou atribui valores a variáveis.
- **Comando não-executável**: é aquele que descreve as características de uma unidade de programa, dos dados ou de informações de edição.
- **Unidade de programa**: é uma sequência de comandos terminando com um comando END.
- **Arquivos de dados**: são unidades de entrada e saída de dados, passíveis de serem lidos/escritos por um programa.

### 1.3 Itens sintáticos

- **Sintaxe**: é a parte da gramática que estuda a disposição das palavras na frase e a das frase no discurso.
- **Constantes**: são valores ou números que ocorrem num programa.
- **Nome simbólico**: é uma sequência de uma ou mais letras ou dígitos, o primeiro dos quais deve ser uma letra.
- **Variáveis**: são valores ou números ou conjuntos de caracteres que ocorrem num programa e que podem sofrer variações durante a execução do programa. Na realidade uma variável é o nome de uma localização da memória.
- **Número de comando**: é um número de um a cinco dígitos, um dos quais deve ser diferente de zero e é usado para identificar um comando. Deve ser localizado no início da linha.
- **Palavra-chave**: é uma sequência de letras que identificam exclusivamente comandos FORTRAN.
- **Operador**: é um ente similar a um operador matemático.
- **Valores**: são obtidos da memória quando eles são usados no lado direito do sinal de igual. Observe que o sinal de "=" não indica uma igualdade e sim uma atribuição.

O FORTRAN permite que você defina diferentes tipos de variáveis. Usa-se variáveis inteiras para armazenar números inteiros, variáveis reais para números reais, variáveis complexas para números complexos, variáveis caracteres para palavras e frases, etc. Você pode definir os tipos de variáveis no seu programa através de "comandos de definição de tipo".

Existem vários comandos FORTRAN para a definição de tipo de variável, entre os quais
"CHARACTER", "INTEGER" e "REAL". Os cálculos podem ser feitos através de comandos de atribuição, escrevendo-se uma "expressão" no lado direito do sinal de igual. Símbolos de operações matemáticas (também conhecidos como "operadores aritméticos"): adição, subtração, multiplicação, divisão, potenciação. Pode-se usar parênteses para agrupar termos em expressões FORTRAN, como é feito em álgebra.

### 1.4 Caracteres usados

- O conjunto de caracteres FORTRAN é constituído de: letras (ou caracteres alfabéticos), dígitos (ou caracteres numéricos) e símbolos especiais como =, +, -, /, *, 
- É preciso tomar cuidado em relação aos símbolos especiais, pois estes podem variar de
função dependendo do fabricante do compilador.

### 1.5 Codificação de programa

<p style="text-align: justify;">
Cada comando é escrito numa linha. Cada linha de comando possui até 132 colunas. O editor de texto é capaz de trabalhar com um número maior de colunas. Muitas vezes um comando não cabe nas colunas disponíveis em uma linha (ou não se quer escrever tudo numa linha). Uma "linha de continuação" pode então ser definida simplesmente colocando-se um caractere & no final da linha e continua-se na de baixo. Pode-se fazer isto até 39 vezes seguidas, de modo que um comando pode ter até 40 linhas. Como sugestão de boa programação, as colunas [1,5] podem ficar em branco. Para a codificação de arquivos de dados de entrada e saída, estes seguem a estrutura que porventura seja definida no próprio programa que vai ler/escrever neste arquivo.
</p>

## 2. Constantes, Variáveis e Conjuntos

### 2.1 Introdução

A seção 2 trata de definir corretamente os componentes básicos dos comandos FORTRAN, tais como: 

- Constantes
- Variáveis
- Conjuntos
- Operador
- Expressões

### 2.2 Constantes

São valores fixos, tais como números. Estes valores não podem ser alterados pelos comandos do programa. Uma constante é uma quantidade fixa e invariável. O FORTRAN distingue três classes de constantes:

- **Numéricas**: 
	- **Inteiras**: o intervalo máximo de valores possíveis para constantes inteiras varia de máquina para máquina. O menor intervalo é [-9999, +9999]
	- **Reais**: uma constante real é uma cadeia de dígitos escrita com ponto decimal, com expoente ou com ambos, expressando um número real, tal como, 0.123, 123.0E-03, -123.0E-03. O intervalo de valores possíveis para o expoente, bem como a precisão do número (quantidade máxima de dígitos significativos) varia de máquina para máquina. O menor intervalo conhecido é de $10^{-28}$ a $10^{28}$. A precisão do número é tipicamente no mínimo de 7 dígitos.
	- **Dupla precisão**: Número real com mais dígitos significativos que o normal.
	- **Complexos**: Números complexos.
- **Lógicas**: "verdade" (.true.) e "falso" (.false.)
- **Caracteres**: sequência de caracteres alfanuméricos e/ou especiais sempre entre aspas. O comprimento máximo de uma cadeia de caracteres geralmente não é maior do que 255.

O comando **PARAMETER**  pode ser usado para associar um nome simbólico a uma constante.

### 2.3 Variáveis

Uma variável possui nome e um tipo, podendo assumir diversos valores. As regras para os nomes de variáveis são:

- O nomes devem começar com uma letra
- Os nomes podem conter letras e dígitos

Os tipos de variáveis são: inteira, real, dupla precisão, complexa, lógica e caracteres, com características similares às constantes.

### 2.4 Conjuntos

Conjuntos de variáveis são conhecidas como variáveis indexadas, que possuem um nome, um tipo e um conjunto de índices. Dizemos que uma variável indexada é uma matriz n-dimensional quando esta possui um conjunto de n índices. Um vetor é uma variável indexada que possui um único índice (unidimensional). Uma matriz é uma variável indexada que possui dois conjuntos de índices (bidimensional).

O comando **DIMENSION** permite especificar uma determinada variável como sendo uma variável indexada.

Exemplos: dimension a(8), b(0:10), c(5, 6), d(1:4, 1:3, 1:5)

## 3. Expressões

Em FORTRAN, expressões são definidas como uma combinações de itens sintáticos, isto é, podem consistir de uma única constante, de uma única variável, de um único elemento de conjunto, ou uma combinação de constantes, variáveis, elementos de conjuntos, unidos com um ou mais operadores e, possivelmente, agrupados com parênteses. Os operadores especificam as computações a serem realizadas sobre os valores dos elementos básicos.
São classificadas em: 

- **Aritmética**: é usada para expressar uma computação numérica. O cálculo desta expressão produz um valor numérico cujo tipo é inteiro, real, dupla precisão ou complexo. Expressões contendo um único operando, o tipo do operando define o tipo de expressão. Expressões com mais de um tipo de operando, o tipo da expressão depende dos tipos dos operandos e operadores. Para todas as operações, exceto a potenciação, se os operandos forem do mesmo tipo, este tipo será o tipo da expressão, senão, o tipo da expressão será o tipo do operando de maior precedência. A Tabela 1 apresenta os operadores aritméticos. A Tabela 2 apresenta a precedência de acordo com o tipo de operando. Os parênteses podem ser usados para agrupar operandos em uma expressão. Qualquer expressão entre parênteses é calculada antes do cálculo da expressão da qual ela é uma parte. Parênteses mais internos são calculados antes. Com exceção do uso de parênteses, as operações são realizadas na ordem de precedência da Tabela 3. Para operadores de mesma precedência, o cálculo se desenvolve da esquerda para a direita. Potenciações consecutivas são realizadas da direita para a esquerda.

Tabela 1

| Operador | Definição     | Uso   | Significado             |
| -------- | ------------- | ----- | ----------------------- |
| **       | potenciação   | a**b  | a elevado ao expoente b |
| *        | multiplicação | a * b | a multiplicado por b    |
| /        | divisão       | a / b | a dividido por b        |
| +        | adição        | a + b | a mais b                |
| -        | subtração     | a - b | a menos b               |
| -        | menos unário  | -a    | a com sinal invertido   |

Tabela 2

| Tipo           | Precedência |
| -------------- | ----------- |
| inteiro        | 1           |
| real           | 2           |
| dupla precisão | 3           |
| complexo       | 4           |

Tabela 3

| Operação | Precedência   |
| -------- | ------------- |
| + e -    | mais baixa    |
| * e /    | intermediária |
| **       | mais alta     |

- Caracteres:
- Relacional:
- Lógica: 

