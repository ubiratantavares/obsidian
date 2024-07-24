## **Semana 1**

Neste semana, você fará contato com os conceitos básicos de TDD. Ao final desta semana, você será capaz de: 
- Entender como funciona o TDD e, principalmente, que o TDD é uma técnica poderosa de projeto e desenvolvimento de software; 
- Capaz de entender o papel fundamental da refatoração dentro do ciclo do TDD, permitindo a você alcançar um código de mais qualidade passo a passo e continuamente.
### 1.1 Introdução e Visão Geral

#### 1.1.1 Welcome

![[Welcome.mp4]]

#### 1.1.2 Sobre o curso

#### 1.1.3 Formato dos Exercícios de Programação

Os exercícios de programação desse curso não se limitam a pedir para você fazer um programa que funcione, pois é importante também a forma que você está implementando a solução. Por esse motivo, a correção desses exercícios não pode ser automática.

Nesses exercícios, chamados de peer reviews ou revisão por pares, depois de entregar a sua solução, você deverá revisar também as submissões de alguns colegas. Com isso, o benefício será mútuo: você ajudará os seus colegas verificando se a forma que eles fizeram estava correta ou apropriada, mas também poderá comparar com a sua solução e aprender com as boas soluções dos seus colegas.

**ATENÇÃO 1: Cuidado na Submissão do seu Trabalho**

Ao contrário do que ocorria no Curso 1, neste curso você só poderá submeter a sua atividade de revisão por pares **apenas uma** **única** **vez**. Por isso, complete sua atividade com muito cuidado, procurando fazê-la o melhor possível e só a submeta quando estiver confiante que respondeu tudo de acordo com o que foi pedido.

**ATENÇÃO 2: Revisão dos trabalhos submetidos pelos colegas**

- Solicitamos que faça a revisão do trabalho de colegas de forma a mais criteriosa possível, seguindo estritamente o que foi pedido fazer, sem extrapolar o que foi pedido no enunciado, nem aceitar problemas ou erros flagrantes.

- Identificamos alunos que, não sabemos o motivo, zeravam o trabalho sendo avaliado, sem entrar no mérito do que o responsável do trabalho tinha feito algo merecedor de zero ou não.
    
- Lembramos que avaliar o trabalho do colega também faz parte da sua avaliação e você tem que fazer uma avaliação a mais correta e criteriosa possível por três motivos: (i) Consolidar o seu conhecimento do assunto; (ii) Não prejudicar seu colega, atribuindo-lhe uma nota maior ou menor sem mérito; (iii) Além disso, não prejudicar sua própria nota, caso constatemos sua falta de critério na avaliação de trabalho de colega, principalmente zerando a nota sem motivo.

**ATENÇÃO 3: Cuidados na revisão dos códigos dos trabalhos de colegas**

- A revisão do trabalho dos colegas deverá ser feita apenas por inspeção de código, não havendo a necessidade de executar o código recebido.

- Alertamos que os códigos enviados por outros alunos poderão inadvertidamente conter elementos maliciosos com potencial de danificar sua máquina e sistema operacional, além de causar eventuais problemas de privacidade e segurança.

- Dessa forma, caso deseje ainda assim executar o código do colega, recomendamos que só o faça caso o tenha inspecionado antes e saiba que é seguro.

#### 1.1.4  Acompanhando as Aulas de Hands-on

Sugerimos que você acompanhe as aulas de hands-on com sua ferramenta aberta ao lado, procurando replicar o que está sendo feito no vídeo.

Para isso, você deve baixar a seguintes ferramentas:

- [Java SE Development Kit (conhecido como JDK)](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)

- [Eclipse IDE for Java Developers](https://eclipse.org/downloads/)

#### 1.1.5 Ferramentas de Comunicação

Olá alunos,

Nós temos duas ferramentas distintas para comunicação:

**<Ferramenta 1>: Relatar um Problema:**

É aquela bandeirinha que fica abaixo da janela com o vídeo da aula, ao lado do curte e não curte.

Ele deve ser usado exatamente para isso, relatar um problema.

São dois tipos de problemas que podem ser relatados aqui:

1.Se você vislumbra algum problema com o conteúdo, informe sobre sua proposta de melhoria de conteúdo!

2.Se você teve problema com a avaliação de exercícios, relate aqui o seu problema

Não se esqueça de informar o nr. da questão relacionada com a proposta de melhoria de conteúdo ou com problema de avaliação

Não deve ser usado para tirar dúvidas, pois a comunicação por essa ferramenta é de via única: recebemos o relato de um problema, resolvemos e você recebe a resposta via email, e acaba.

Isso é ruim se você continuou com dúvida, pois terá que abrir novo chamado.

Além do mais, essa ferramenta é anônima: não recebemos o nome e nem o email de quem relatou.

**<Ferramenta 2>: Fórum:**

Sintam-se nesta ferramenta a vontade para postar dúvidas e comentar/responder as dúvidas de outros alunos.

Muitas dúvidas são resolvidas e bem discutidas pelos próprios colegas do curso.

Você pode acessar o fórum pela aba Discussões ou acessar o tópico específico de uma aula logo abaixo dela.

Também sintam-se a vontade para usar o fórum Meet and Greet, postar mensagens a outros alunos, combinar grupos de estudos e encontrar alunos próximos.

Os instrutores do curso e o Teaching Staff estão rotineiramente aparecendo no fórum para ajudar os alunos nas diversas dificuldades e dúvidas apresentadas.

Pedimos apenas que sigam as clássicas boas práticas em fóruns, a saber:

1. Não criem vários posts ou tópicos iguais.
2. Antes de criarem um tópico, pesquisem se alguém já criou um com esse mesmo assunto, talvez com palavras similares.
3. Comente e acompanhe esse post ao invés de criar um outro igual; isso ajudará aos colegas de curso e ao Teaching Staff a responder ou discutir todas questões levantadas em tempo hábil.
4. Não desviem o assunto do tópico: se você acessou um post com dúvida X, não poste sobre sua dúvida Y. Neste caso, abra um novo tópico.

Obrigado e bons estudos!

#### 1.1.6 Disciplina Consciente e Plágio nos Exercícios

Caros aprendizes,

A Disciplina Consciente é o código de ética dos alunos e professores do ITA, que permite, entre outras coisas, a confiança mútua e a execução de trabalhos e provas sem a fiscalização dos professores. De difícil definição devido aos seus aspectos subjetivos, consiste no entendimento, conscientização, discernimento, vivência e prática das normas vigentes, sem necessidade de fiscalização ostensiva.

Recebemos denúncias e constatamos que alguns alunos estão plagiando o exercício de outros alunos. Acreditamos que essa prática não está de acordo com o objetivo do curso e muito menos com os princípios que os alunos e professores do ITA seguem desde sua criação. O aluno que copia o exercício de outro está na verdade se enganando, pois está perdendo uma oportunidade preciosa de aprendizado.

Dessa forma, pedimos a todos os alunos que evitem criar tópicos nos fóruns onde colocam o código de sua solução, ou mesmo parte dele. Vocês podem tirar dúvidas e ajudar uns aos outros, mas perguntando sobre os conceitos e não pedindo a solução pronta. Também não coloquem o link de sua submissão para alguém corrigir. Fique tranquilo que nós e a plataforma do Coursera nos encarregaremos de fazer isso acontecer! Tópicos dessa natureza serão excluídos pelos nossos moderadores, e dependendo do caso, a submissão será anulada.

Também informamos que estamos verificando o que podemos fazer para evitar e prevenir que o plágio aconteça. Alguns alunos deram sugestões interessantes nos fóruns, e também estamos em conversa com os responsáveis pela plataforma do Coursera para ver o que pode ser feito.

[Honor Code](https://learner.coursera.help/hc/en-us/articles/209818863?utm_medium=email&utm_source=other&utm_campaign=opencourse.7fljFneTEeWrAxJQXw-8PQ.announcements~opencourse.7fljFneTEeWrAxJQXw-8PQ.nOK_PAIAEeaFfBL_mcaB5Q)

Siga a Disciplina Consciente e aproveite essa oportunidade para aprender de verdade!

Um excelente curso a todos!

### 1.2 Primeiros Passos no TDD

#### 1.2.1 Conhecendo o TDD

![[conhecendo o TDD.mp4]]

Test Driven Development: é uma técnica de desenvolvimento e projeto de software, em que os testes são criados antes do código de produção.

"TDD is a crazy idea that works!" (Kent Beck, Software Engineering Radio Podcast)

#### 1.2.2 Ciclo do TDD

![[Ciclo do TDD.mp4]]


- Adicionar um teste
	- Projetar a interface da classe
	- Definir o comportamento esperado
- Fazer o teste passar
	- Criar o comportamento da classe
	- Buscar a solução mais simples para os testes existentes
- Refatorar
	- Limpar o código que foi criado
	- Ajustar o design da classe para seu estado atual

Devo alternar com frequência entre criar testes e código de produção.
#### 1.2.3 Hands-On: Primeira Classe com TDD - Parte 1

![[Hands-on - Primeira Classe com TDD - Parte 1.mp4]]

#### 1.2.4 Hands-On: Primeira Classe com TDD - Parte 2

![[Hands-on - Primeira Classe com TDD - Parte 2.mp4]]

#### 1.2.5 Hands-On: Primeira Classe com TDD - Parte 3

![[Hands-on - Primeira Classe com TDD - Parte 3.mp4]]
#### 1.2.6 Teste: Como funciona o TDD?

1. Como você deve criar o primeiro teste do TDD?

Deve possuir o cenário mais simples daquela classe
Deve expressar a funcionalidade principal da classe
Deve possuir o cenário mais complexo daquela classe

2. Qual a ordem do ciclo do TDD?

teste-código-refatoração
código-refatoração-teste
código-teste-refatoração
teste-refatoração-código

3. O TDD é uma técnica cujo objetivo principal é a criação de testes.

Falso
Verdadeiro

4. O TDD é uma técnica que pode ser utilizada para fazer a modelagem das classes.

Falso
Verdadeiro

5. Qual o papel do teste no TDD? (marque quantas desejar)

Fazer a verificação de código já desenvolvido.
Definir a API da classe que está sendo desenvolvida.
Definir o algoritmo interno da classe desenvolvida.
Garantir a qualidade do código.
Definir o comportamento da classe desenvolvida para o cenário do teste.

6. Qual o papel da refatoração no TDD?

Derivar novos testes dos testes existentes.
Corrigir código que não está passando nos testes.
Adicionar o comportamento para fazer o teste passar.
Reestruturar o código sem alterar seu comportamento.

7. Ao tentar fazer um teste que está falhando passar, como o desenvolvedor deve proceder?

Fazer uma solução para já ser utilizada nos próximos testes.
Fazer a solução mais simples possível
Criar um design mais elaborado para poder atender requisitos futuros.

8. Ao incrementar os testes no TDD, qual seria a melhor abordagem?

Adicionar um novo método de teste.
Incrementar o cenário de um método de teste existente.

### 1.3 Sobre Refatoração

#### 1.3.1 Conhecendo a Refatoração: O que é?

![[Conhecendo a Refatoração - O que é.mp4]]

#### 1.3.2 Conhecendo a Refatoração: Porque refatorar?

![[Conhecendo a Refatoração - Por que refatorar.mp4]]

#### 1.3.3 Conhecendo a Refatoração: Quando refatorar?

![[Conhecendo a Refatoração - Quando refatorar.mp4]]

### 1.4 Exercício Prático

#### 1.4.1  ATENÇÃO - Cuidados na revisão dos trabalhos de colegas

**ATENÇÃO 1: Cuidado na Submissão do seu Trabalho**

Ao contrário do que ocorria no Curso 1, neste curso você só poderá submeter a sua atividade de revisão por pares **apenas uma** **única** **vez**. Por isso, complete sua atividade com muito cuidado, procurando fazê-la o melhor possível e só a submeta quando estiver confiante que respondeu tudo de acordo com o que foi pedido.

**ATENÇÃO 2: Revisão dos trabalhos submetidos pelos colegas**

- Solicitamos que faça a revisão do trabalho de colegas de forma a mais criteriosa possível, seguindo estritamente o que foi pedido fazer, sem extrapolar o que foi pedido no enunciado, nem aceitar problemas ou erros flagrantes.

- Identificamos alunos que, não sabemos o motivo, zeravam o trabalho sendo avaliado, sem entrar no mérito do que o responsável do trabalho tinha feito algo merecedor de zero ou não.

- Lembramos que avaliar o trabalho do colega também faz parte da sua avaliação e você tem que fazer uma avaliação a mais correta e criteriosa possível por três motivos: 
	- i. Consolidar o seu conhecimento do assunto; 
	- ii. Não prejudicar seu colega, atribuindo-lhe uma nota maior ou menor sem mérito;
	- iii. Além disso, não prejudicar sua própria nota, caso constatemos sua falta de critério na avaliação de trabalho de colega, principalmente zerando a nota sem motivo.

**ATENÇÃO 3: Cuidados na revisão dos códigos dos trabalhos de colegas**

A revisão do trabalho dos colegas deverá ser feita apenas por inspeção de código, não havendo a necessidade de executar o código recebido.

Alertamos que os códigos enviados por outros alunos poderão inadvertidamente conter elementos maliciosos com potencial de danificar sua máquina e sistema operacional, além de causar eventuais problemas de privacidade e segurança.

Dessa forma, caso deseje ainda assim executar o código do colega, recomendamos que só o faça caso o tenha inspecionado antes e saiba que é seguro.

#### 1.4.2 Tarefa avaliada por colega: Quebra de Strings com CamelCase

- Criar utilizando TDD um método que transforma uma cadeia de caracteres em camel case (http://pt.wikipedia.org/wiki/CamelCase) em uma lista de Strings com as palavras. 

- O método deve possuir a seguinte assinatura: 

```java
public static List<String> converterCamelCase(String original)
```

- Faça um relatório detalhando todo o processo de TDD.

- Para cada ciclo que você fizer no TDD, adicione uma seção no relatório o seguinte: 

	- o teste adicionado, como estava o código antes, como ficou o código depois para fazer o teste passar e uma pequena descrição textual do que foi feito. 

	- Abaixo seguem alguns exemplos de entrada e saída que você pode usar como base para os seus testes (crie adicionais ou diferentes se achar necessário):

	    • nome - “nome” 
	    • Nome - “nome” 
	    • nomeComposto - “nome”, “composto” 
	    • NomeComposto - “nome”, “composto” 
	    • CPF - “CPF” 
	    • numeroCPF - “numero”, “CPF” 
	    • numeroCPFContribuinte - “numero”, “CPF”, “contribuinte” 
	    • recupera10Primeiros - “recupera”, “10”, “primeiros” 
	    • 10Primeiros - Inválido → não deve começar com números 
	    • nome#Composto - Inválido → caracteres especiais não são permitidos, somente letras e números
    
- É permitida a criação de métodos auxiliares.

- Para ficar mais divertido e praticar a refatoração, nenhum método pode possuir mais de dez linhas de código em seu corpo. 

- Não vale “roubar” e incluir vários comandos em uma mesma linha de código!

- Para cada refatoração que precisar fazer nesse processo, adicione uma seção no relatório o seguinte: como estava o código antes, como ficou o código depois da refatoração e uma pequena descrição textual do que foi feito.

- No método desenvolvido é permitida somente a utilização de classes da API básica da linguagem Java. Se você utilizar algum componente externo que facilite demais sua tarefa, estará tirando o propósito do exercício!

- Você deverá entregar o relatório detalhado e o código final.

- Visão geral dos critérios de avaliação

	- Você será avaliado com base no seguinte:
	    • Cumprimento dos requisitos de implementação pedidos no enunciado
	    • Organização do código implementado (seguindo a restrição de no máximo 10 linhas de código por método)
	    • A utilização de TDD no processo de desenvolvimento 

- CamelCase e Refatoração

	- CamelCase é a denominação em inglês para a prática de escrever palavras compostas ou frases, onde cada palavra é iniciada com Maiúscula, com exceção às vezes da primeira letra da primeira palavra, e unidas sem espaços. É um padrão largamente utilizado em diversas linguagens de programação, como Java, C#, Ruby, PHP e Python, principalmente nas definições de Classes e Objetos. Pela sua associação com tecnologia, o marketing se apropriou dessa maneira de escrever, injetando certo ar de "tecnologia" nos produtos assim nomeados: iPod, GameCube, OpenOffice.org, StarCraft, dentre outros. A provável origem do termo é a semelhança do contorno de expressões CamelCase, onde as letras em maiúsculo "saltam" no meio das minúsculas como corcovas de um camelo. Fonte: https://pt.wikipedia.org/wiki/CamelCase

	- Refatoração: É uma técnica para transformar um programa com problemas de projeto e codificação, como código duplicado e nomes inapropriados de métodos e classes, por exemplo, eliminando tais problemas. Neste curso, iremos mostrar uma maneira segura de fazer refatoração ou transformação do código sem que o comportamento anterior à refatoração seja mudado. O que garante que o código transformado não modificou o comportamento é testar o código antes e depois da refatoração e ele deve passar com sucesso em ambos os testes.

- Neste trabalho, não se espera que você faça uso de técnicas avançadas e testadas de refatoração, pois na Semana 1 só mostramos um pouco dos conceitos do assunto. O que se deseja é que, por causa do limite de linhas de código do método, você realize eliminações apropriadas de código redundante, garantindo que o comportamento não mude com as alterações que você promoveu. Para isso, use a técnica de testar antes e depois de fazer suas refatorações. Use também a Regra de Três para só iniciar a refatoração quando a redundância ocorre pela terceira vez, a menos que o número de linhas já ultrapasse o limite de 10 linhas colocado na atividade; nesse caso, a refatoração tem que ser feita imediatamente.

### 1.5 Material Complementar

#### 1.5.1 Como Obter Código de Qualidade

![[Como Obter Código de Qualidade.mp4]]

#### 1.5.2 TDD: Projeto Antecipado (BDUF) Versus Nenhum Projeto (NoDUF)

![[TDD Projeto Antecipado (BDUF) Versus Nenhum Projeto (NoDUF).mp4]]

#### 1.5.3 TDD: Projeto Suficiente com Modelagem CRC

![[TDD Projeto Suficiente com Modelagem CRC.mp4]]

#### 1.5.4 TDD: Design Dinâmico da Aplicação

![[TDD Design Dinâmico da Aplicação.mp4]]


## **Semana 2**

Nesta semana você aprofundará seu contato prático com o TDD, bem como com o ciclo de Refatoração. Ao final desta semana, você será capaz de:

- Modelar uma classe com o TDD, entendendo os princípios que estão por trás; 
- Entender o papel do mau cheiro" no Ciclo da Refatoração.

### 2.1 Entendendo TDD

#### 2.1.1 O Chapéu do TDD

![[O Chapéu do TDD.mp4]]

#### 2.1.2 George Dinwiddie - O Criador do Chapéu do TDD


#### 2.1.3 Hands-on: Tradutor com TDD - Parte 1

![[Hands-on Tradutor com TDD - Parte 1.mp4]]
#### 2.1.4 Hands-on: Tradutor com TDD - Parte 2

![[Hands-on Tradutor com TDD - Parte 2.mp4]]
#### 2.1.5 Hands-on: Tradutor com TDD - Parte 3

![[Hands-on Tradutor com TDD - Parte 3.mp4]]

#### 2.1.6 Hands-on: Tradutor com TDD - Parte 4

![[Hands-on Tradutor com TDD - Parte 4.mp4]]
#### 2.1.7 Princípios por Trás do TDD

![[Princípios Por Trás do TDD.mp4]]

#### 2.1.8 Mitos e Lendas sobre TDD

![[Mitos e Lendas sobre TDD.mp4]]
### 2.2 Bad Smells e Ciclo de Refatoração

#### 2.2.1 Conhecendo a Refatoração: O Papel do Mau Cheiro

![[Conhecendo a Refatoração - O Papel do Mau Cheiro.mp4]]

#### 2.2.2 Conhecendo a Refatoração: O Ciclo da Refatoração

![[Conhecendo a Refatoração - O Ciclo da Refatoração.mp4]]

#### 2.2.3 Ciclo da Refatoração: Exemplo com Múltiplos Maus Cheiros - Parte 1: Preparação

![[Ciclo de Refatoração - Exemplo com Múltiplos Maus Cheiros – Parte 1.mp4]]

#### 2.2.4 Ciclo da Refatoração: Exemplo com Múltiplos Maus Cheiros - Parte 2.1: Antes do Primeiro Mau Cheiro

![[Ciclo da Refatoração - Exemplo com Multiplos Maus Cheiros - Parte 2.1.mp4]]

#### 2.2.5 Ciclo da Refatoração: Exemplo com Múltiplos Maus Cheiros - Parte 2.2: Até o Segundo Mau Cheiro

![[Ciclo da Refatoração - Exemplo com Multiplos Maus Cheiros - Parte 2.2.mp4]]

#### 2.2.6 Ciclo da Refatoração: Exemplo com Múltiplos Maus Cheiros - Parte 2.3: Até o Quinto Mau Cheiro

![[Ciclo da Refatoração - Exemplo com Múltiplos Maus Cheiros – Parte 2.3.mp4]]

### 2.3 Exercício Prático

#### 2.3.1 ATENÇÃO: Cuidados na Revisão dos Trabalhos dos Colegas

**ATENÇÃO 1: Cuidado na Submissão do seu Trabalho**

Ao contrário do que ocorria no Curso 1, neste curso você só poderá submeter a sua atividade de revisão por pares **apenas uma** **única** **vez**. Por isso, complete sua atividade com muito cuidado, procurando fazê-la o melhor possível e só a submeta quando estiver confiante que respondeu tudo de acordo com o que foi pedido.

**ATENÇÃO 2: Revisão dos trabalhos submetidos pelos colegas**

- Solicitamos que faça a revisão do trabalho de colegas de forma a mais criteriosa possível, seguindo estritamente o que foi pedido fazer, extrapolar o que foi pedido no enunciado, nem aceitar problemas ou erros flagrantes.
    
- Identificamos alunos que, não sabemos o motivo, zeravam o trabalho sendo avaliado, sem entrar no mérito do que o responsável do trabalho tinha feito algo merecedor de zero ou não.
    
- Lembramos que avaliar o trabalho do colega também faz parte da sua avaliação e você tem que fazer uma avaliação a mais correta e criteriosa possível por três motivos: (i) Consolidar o seu conhecimento do assunto; (ii) Não prejudicar seu colega, atribuindo-lhe uma nota maior ou menor sem mérito; (iii) Além disso, não prejudicar sua própria nota, caso constatemos sua falta de critério na avaliação de trabalho de colega, principalmente zerando a nota sem motivo.
    

**ATENÇÃO 3: Cuidados na revisão dos códigos dos trabalhos de colegas**

A revisão do trabalho dos colegas deverá ser feita apenas por inspeção de código, não havendo a necessidade de executar o código recebido.

Alertamos que os códigos enviados por outros alunos poderão inadvertidamente conter elementos maliciosos com potencial de danificar sua máquina e sistema operacional, além de causar eventuais problemas de privacidade e segurança.

Dessa forma, caso deseje ainda assim executar o código do colega, recomendamos que só o faça caso o tenha inspecionado antes e saiba que é seguro.

#### 2.3.2 Refatoração do SAB

No Curso 1, nós projetamos um conjunto de classes, usando a Modelagem CRC, para o SAB – Sistema de Automação de Biblioteca. A maioria dos métodos implementados precisa de refatoração, que não foi feita para podermos usar algum deles como exercício de revisão por pares.

Assim solicitamos que examine o método abaixo registraUsuario(String) e faça o seguinte:

a) Identifique uma lista de maus cheiros que você encontra no código, relacionando cada um deles com o correspondente tipo de mau cheiro exercitado nesta parte do curso: [mau cheiro no código (trecho do código)/tipo de mau cheiro (de acordo com Fowler, pode estar em português)].

b) Realize o Ciclo de Refatoração apresentado, eliminando cada um dos maus cheiros encontrado no código do método, considerando apenas os tipos de mau cheiro exercitados nesta Semana 2 do curso.

c) Entregue um documento em que você apresenta o seguinte:

A) Código anterior do método registraUsuario(String), antes de iniciar o Ciclo de Refatoração.

B) Imagem: Imagem da execução bem-sucedida (verde) no Eclipse ou outro ambiente Java, comprovando que código atual do SAB, incluindo o método registraUsuario(String) está funcionando direito (pelo menos de acordo com a bateria de testes atual).

C) Ciclo de Refatoração até a Lista de Maus Cheiros ficar vazia, apresentando 5 coisas para cada refatoração realizada no Ciclo de Refatoração:

1. **Antes**: O código Antes da refatoração, com o trecho a ser refatorado com as letras coloridas ou com fundo amarelo
    
2. **Tipo Mau Cheiro/Técnica de Refatoração**: Indique o tipo do mau cheiro identificado no código em 1) e a técnica de refatoração empregada, ambos de acordo com Fowler e podendo estar em português!
    
3. **Depois**: O código Depois da refatoração, com o trecho refatorado com as letras coloridas ou com fundo verde
    
4. **Imagem**: Imagem da execução bem-sucedida (verde) no Eclipse ou outro ambiente Java, comprovando que a refatoração foi feita a contento!
    
5. **Lista de maus cheiros**: Atualize a lista, eliminando o mau cheiro que deu origem à refatoração deste ciclo
    

D) Código Depois final do método abaixo registraUsuario(String), sem letras ou fundo coloridos!

Procure apresentar o código sempre bem apresentado, de acordo com boas práticas de apresentação/formatação de código Java. Pode usar, por exemplo, o Source/Format do Eclipse ou equivalente do seu ambiente Java.

A bateria de testes atual não pode ser modificada de forma alguma durante o Ciclo de Refatoração!

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/NFEcSSBnEeaDwg4FsnAbYw_b26af44e2bdb51bc058f745926672e62_Captura-de-Tela-2016-05-22-_s-18.49.43.png?expiry=1721865600000&hmac=QI6HtRFOQ_uGU-0EE-aXId8_eGKI1cV4OHfgwqSf5mU)

Visão geral dos critérios de avaliação

Você será avaliado com base no seguinte:

- Cumprimento dos requisitos pedidos no enunciado
    
- Organização do documento de apresentação
    
- Identificação precisa dos maus cheiros, tipos de maus cheiros e técnicas de refatoração correspondentes apresentados na Semana 2
    
- Não indicação de maus cheiros, tipos de maus cheiros e técnicas de refatoração não apresentados na Semana 2
    
- Utilização do Ciclo de Refatoração como visto no curso
    
Código de Produção e de Testes do SAB

Carregue o código de produção e de Testes do SAB em seu ambiente Java. Primeiramente, verifique se o código de produção funciona de acordo com a bateria de testes que o acompanha. Ao final da atividade, verifique novamente se o código de produção funciona de acordo com a mesma bateria de testes que o acompanha. Essa bateria de testes deve ser usada sem modificação em todos os ciclos de refatoração empregados na atividade.

Na seção de Material Complementar desta Semana 2 você encontrará tanto o código de produção como o código de testes que desenvolvemos para este Curso 2.

Sugerimos fortemente que use esse material para treinar identificar mau cheiro e realizar refatoração apresentada ou não neste curso. Refatore-o completamente! Tome cuidado, pois neste caso a bateria de testes talvez precise de refatoração também!

### 2.4 Material Complementar

#### 2.4.1 Código de Produção e Código de Teste de Integração do SAB - Sistema de Automação de Biblioteca

## **Semana 3**

Nesta semana você aprofundará seu contato prático com casos de teste e com dependências entre classes no contexto do TDD. Ao final desta semana, você será capaz de: 
- Modelar casos de teste a partir de responsabilidades para uso no ciclo TDD; 
- Testar classes com dependências por meio de mock objects.

### 3.1 Responsabilidades, Casos de Teste e Ciclo TDD

#### 3.1.1 Casos de Teste a partir de Responsabilidades

![[Casos de Teste a Partir de Responsabilidades.mp4]]

#### 3.1.2 Ciclo TDD no contexto de Casos de Teste

![[Ciclo TDD no Contexto de Casos de Teste.mp4]]

#### 3.1.3 Ciclo TDD no contexto de Responsabilidades

![[Ciclo TDD no Contexto de Responsabilidades.mp4]]

### 3.2 Lidando com Dependências

#### 3.2.1 Testando Classes com Dependências

![[Testando Classes com Dependências.mp4]]
#### 3.2.2 Aceitando Mock Objects

![[Aceitando Mock Objects.mp4]]

#### 3.2.3 Diretivas de um Mock Object

![[Diretivas de um Mock Object.mp4]]

### 3.3 Modelando com Mock Object

#### 3.3.1 Quando a Dependência ainda Não Existe

![[Quando a dependência ainda não existe.mp4]]

#### 3.3.2 Hands-on: Adições no Carrinho de Compras - Parte 1

![[Hands-on Adições no Carrinho de Compras - Parte 1.mp4]]

#### 3.3.3 Hands-on: Adições no Carrinho de Compras - Parte 2

![[Hands-on Adições no Carrinho de Compras - Parte 2.mp4]]

#### 3.3.4 Hands-on: Adições no Carrinho de Compras - Parte 3

![[Hands-on Adições no Carrinho de Compras - Parte 3.mp4]]

#### 3.3.5 Mockar ou Não Mockar? Eis a Questão

![[Mockar ou não mockar Eis a questão.mp4]]

### 3.4 Exercício Prático

#### 3.4.1 ATENÇÃO - Cuidados na revisão dos trabalhos de colegas

**ATENÇÃO 1: Cuidado na Submissão do seu Trabalho**

Ao contrário do que ocorria no Curso 1, neste curso você só poderá submeter a sua atividade de revisão por pares **apenas uma** **única** **vez**. Por isso, complete sua atividade com muito cuidado, procurando fazê-la o melhor possível e só a submeta quando estiver confiante que respondeu tudo de acordo com o que foi pedido.

**ATENÇÃO 2: Revisão dos trabalhos submetidos pelos colegas**

- Solicitamos que faça a revisão do trabalho de colegas de forma a mais criteriosa possível, seguindo estritamente o que foi pedido fazer, sem extrapolar o que foi pedido no enunciado, nem aceitar problemas ou erros flagrantes.
    
- Identificamos alunos que, não sabemos o motivo, zeravam o trabalho sendo avaliado, sem entrar no mérito do que o responsável do trabalho tinha feito algo merecedor de zero ou não.
    
- Lembramos que avaliar o trabalho do colega também faz parte da sua avaliação e você tem que fazer uma avaliação a mais correta e criteriosa possível por três motivos: (i) Consolidar o seu conhecimento do assunto; (ii) Não prejudicar seu colega, atribuindo-lhe uma nota maior ou menor sem mérito; (iii) Além disso, não prejudicar sua própria nota, caso constatemos sua falta de critério na avaliação de trabalho de colega, principalmente zerando a nota sem motivo.
    

**ATENÇÃO 3: Cuidados na revisão dos códigos dos trabalhos de colegas**

A revisão do trabalho dos colegas deverá ser feita apenas por inspeção de código, não havendo a necessidade de executar o código recebido.

Alertamos que os códigos enviados por outros alunos poderão inadvertidamente conter elementos maliciosos com potencial de danificar sua máquina e sistema operacional, além de causar eventuais problemas de privacidade e segurança.

Dessa forma, caso deseje ainda assim executar o código do colega, recomendamos que só o faça caso o tenha inspecionado antes e saiba que é seguro.

#### 3.4.2 Tarefa avaliada por colega: Software de Caixa Eletrônico

Criar, utilizando TDD, uma classe chamada CaixaEletronico, juntamente com a classe ContaCorrente, que possuem os requisitos abaixo:

- A classe CaixaEletronico possui os métodos logar(), sacar(), depositar() e saldo() e todas retornam uma String com a mensagem que será exibida na tela do caixa eletrônico.
    
- Existe uma classe chamada ContaCorrente que possui as informações da conta necessárias para executar as funcionalidades do CaixaEletronico. Essa classe faz parte da implementação e deve ser definida durante a sessão de TDD.
    
- As informações da classe ContaCorrente podem ser obtidas utilizando os métodos de uma interface chamada ServicoRemoto. Essa interface possui o método recuperarConta() que recupera uma conta baseada no seu número e o método persistirConta() que grava alterações, como uma mudança no saldo devido a um saque ou depósito. Não tem nenhuma implementação disponível da interface ServicoRemoto e deve ser utilizado um Mock Object para ela durante os testes.
    
- O método persistirConta() da interface ServicoRemoto deve ser chamado **apenas** no caso de ser feito algum saque ou depósito **com sucesso**.
    

- Ao executar o método saldo(), a mensagem retornada deve ser "O saldo é R$xx,xx" com o valor do saldo.
    
- Ao executar o método sacar(), e a execução for com sucesso, deve retornar a mensagem "Retire seu dinheiro". Se o valor sacado for maior que o saldo da conta, a classe CaixaEletronico deve retornar uma String dizendo "Saldo insuficiente".
    
- Ao executar o método depositar(), e a execução for com sucesso, deve retornar a mensagem "Depósito recebido com sucesso"
    
- Ao executar o método login(), e a execução for com sucesso, deve retornar a mensagem "Usuário Autenticado". Caso falhe, deve retornar "Não foi possível autenticar o usuário"
    

- Existe uma interface chamada Hardware que possui os métodos pegarNumeroDaContaCartao() para ler o número da conta do cartão para o login (retorna uma String com o número da conta), entregarDinheiro() que entrega o dinheiro no caso do saque (retorna void) e lerEnvelope() que recebe o envelope com dinheiro na operação de depósito (retorna void). Não tem nenhuma implementação disponível da interface Hardware e deve ser utilizado um Mock Object para ela durante os testes.
    
- Todos os metodos da interface Hardware podem lançar uma exceção dizendo que houve uma falha de funcionamento do hardware.
    

Deve-se criar testes também para os casos de falha, principalmente na classe Hardware que pode falhar a qualquer momento devido a um mau funcionamento.

Lembre-se de usar o TDD e ir incrementando as funcionalidades aos poucos.

Você deve entregar o código final, incluindo os testes e os mock objects criados. Coloque todo código relativo a teste em uma pasta separada.

Visão geral dos critérios de avaliação

Você será avaliado com base no seguinte:

- Cumprimento dos requisitos de implementação pedidos no enunciado
    
- Organização do código implementado
    
- Uso correto de Mock Objects
    
- A separação do código relativo a testes do código de produção

### 3.5 Material Complementar

#### 3.5.1 Exemplo de Definição de Casos de Teste de Responsabilidades do SAB

![[Exemplo de Definição de Casos de Teste de Responsabilidades.mp4]]

## **Semana 4**

### 4.1 Boas Práticas na Refatoração

#### 4.1.1 Exemplo de Refatoração: Extract Method

![[Exemplo de Refatoração Extract Method.mp4]]

#### 4.1.2 Exemplo de Refatoração: Mau Cheiro "Inveja de Característica"

![[Exemplo de Refatoração Mau Cheiro Inveja de Característica.mp4]]
#### 4.1.3 Exemplo de Refatoração: Parte Inicial do Decompose Conditional

![[Exemplo de Refatoração Decompose Conditional-parte1.mp4]]

#### 4.1.4 Exemplo de Refatoração: Parte Final do Decompose Conditional

![[Exemplo de Refatoração Decompose Conditional-parte2.mp4]]

#### 4.1.5 SOLID: Princípios para Projetos de Classes

![[SOLID Princípios para Projeto de Classes.mp4]]

Os princípios SOLID são um conjunto de diretrizes para o design de software que promovem a legibilidade, a reutilização e a manutenção do código. Eles foram introduzidos por Robert C. Martin, também conhecido como "Uncle Bob". O acrônimo SOLID representa cinco princípios:

1. **Single Responsibility Principle (SRP) - Princípio da Responsabilidade Única**
	- **Definição**: Uma classe deve ter apenas uma única responsabilidade, ou seja, apenas uma razão para mudar.
    - **Objetivo**: Manter o código modular e focado, facilitando a manutenção e a compreensão.
    - **Exemplo**: Se uma classe `Relatório` gera relatórios e também envia e-mails, ela tem mais de uma responsabilidade. Separando estas funcionalidades, criamos uma classe `Relatório` e outra `EmailService`.

**Antes de aplicar SRP** 
    
```java
public class Relatorio {
    public void gerarRelatorio() {
        // Código para gerar o relatório
    }

    public void enviarPorEmail(String destinatario) {
        // Código para enviar o relatório por email
    }
}
```

**Depois de aplicar SRP:**    
   
```java
public class Relatorio {
    public void gerarRelatorio() {
        // Código para gerar o relatório
    }
}

public class EmailService {
    public void enviarPorEmail(String destinatario, String conteudo) {
        // Código para enviar o relatório por email
    }
}
```


2. **Open/Closed Principle (OCP) - Princípio do Aberto/Fechado**
    - **Definição**: Entidades de software (classes, módulos, funções, etc.) devem estar abertas para extensão, mas fechadas para modificação.
    - **Objetivo**: Permitir que o comportamento do software seja estendido sem alterar o código fonte existente, reduzindo o risco de introduzir novos bugs.
    - **Exemplo**: Se uma classe `Relatório` gera relatórios em formato PDF e você quer adicionar a geração em formato HTML, em vez de modificar a classe original, você pode criar uma nova classe que estenda `Relatório` e implemente a nova funcionalidade.

**Antes de aplicar OCP:**

```java
public class Relatorio {
    public void gerarRelatorio(String tipo) {
        if (tipo.equals("PDF")) {
            // Gerar relatório em PDF
        } else if (tipo.equals("HTML")) {
            // Gerar relatório em HTML
        }
    }
}
```

**Depois de aplicar OCP:**

```java
public abstract class Relatorio {
    public abstract void gerarRelatorio();
}

public class RelatorioPDF extends Relatorio {
    @Override
    public void gerarRelatorio() {
        // Gerar relatório em PDF
    }
}

public class RelatorioHTML extends Relatorio {
    @Override
    public void gerarRelatorio() {
        // Gerar relatório em HTML
    }
}
```

3. **Liskov Substitution Principle (LSP) - Princípio da Substituição de Liskov**
    - **Definição**: Objetos de uma classe derivada devem poder substituir objetos da classe base sem alterar a funcionalidade do programa.
    - **Objetivo**: Garantir que subclasses possam ser usadas como substitutas das suas classes base sem erros ou comportamento inesperado.
    - **Exemplo**: Se `Quadrado` é uma subclasse de `Retângulo`, substituir um objeto `Retângulo` por um objeto `Quadrado` não deve quebrar o código.

**Antes de aplicar LSP:**

```java
public class Retangulo {
    protected int largura;
    protected int altura;

    public void setLargura(int largura) {
        this.largura = largura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public int getArea() {
        return largura * altura;
    }
}

public class Quadrado extends Retangulo {
    @Override
    public void setLargura(int largura) {
        this.largura = largura;
        this.altura = largura;
    }

    @Override
    public void setAltura(int altura) {
        this.altura = altura;
        this.largura = altura;
    }
}
```

**Depois de aplicar LSP:**

```java
public interface Forma {
    int getArea();
}

public class Retangulo implements Forma {
    private int largura;
    private int altura;

    public void setDimensoes(int largura, int altura) {
        this.largura = largura;
        this.altura = altura;
    }

    @Override
    public int getArea() {
        return largura * altura;
    }
}

public class Quadrado implements Forma {
    private int lado;

    public void setLado(int lado) {
        this.lado = lado;
    }

    @Override
    public int getArea() {
        return lado * lado;
    }
}
```


4. **Interface Segregation Principle (ISP) - Princípio da Segregação de Interfaces**
    - **Definição**: Os clientes não devem ser forçados a depender de interfaces que não utilizam.
    - **Objetivo**: Evitar que classes implementem métodos que não utilizam, mantendo as interfaces pequenas e específicas.
    - **Exemplo**: Se temos uma interface `Trabalhador` com métodos `trabalhar`, `descansar` e `fazerRefeição`, uma classe `Robô` não deveria implementar `fazerRefeição` pois não faz sentido. Separando a interface em `Trabalhador` e `Comedor`, o `Robô` implementaria apenas `Trabalhador`.

**Antes de aplicar ISP:**

```java
public interface Trabalhador {
    void trabalhar();
    void descansar();
    void fazerRefeicao();
}

public class Robo implements Trabalhador {
    @Override
    public void trabalhar() {
        // Implementação
    }

    @Override
    public void descansar() {
        // Implementação
    }

    @Override
    public void fazerRefeicao() {
        // Não aplicável
    }
}
```

**Depois de aplicar ISP:**

```java
public interface Trabalhador {
    void trabalhar();
    void descansar();
}

public interface Comedor {
    void fazerRefeicao();
}

public class Robo implements Trabalhador {
    @Override
    public void trabalhar() {
        // Implementação
    }

    @Override
    public void descansar() {
        // Implementação
    }
}

public class Humano implements Trabalhador, Comedor {
    @Override
    public void trabalhar() {
        // Implementação
    }

    @Override
    public void descansar() {
        // Implementação
    }

    @Override
    public void fazerRefeicao() {
        // Implementação
    }
}
```

5. **Dependency Inversion Principle (DIP) - Princípio da Inversão de Dependência**:
    - **Definição**: Módulos de alto nível não devem depender de módulos de baixo nível, mas ambos devem depender de abstrações. Além disso, abstrações não devem depender de detalhes, mas os detalhes devem depender de abstrações.
    - **Objetivo**: Reduzir o acoplamento entre módulos e promover a inversão de dependências.
    - **Exemplo**: Em vez de uma classe `Cliente` depender diretamente de uma classe `RepositorioMySQL`, ela deve depender de uma interface `Repositorio` que pode ser implementada por `RepositorioMySQL`, `RepositorioPostgreSQL`, etc.

**Antes de aplicar DIP:**

```java
public class Cliente {
    private RepositorioMySQL repositorio;

    public Cliente() {
        this.repositorio = new RepositorioMySQL();
    }

    // Métodos que utilizam repositorio
}
```

**Depois de aplicar DIP:**

```java
public interface Repositorio {
    void salvar();
    void deletar();
}

public class RepositorioMySQL implements Repositorio {
    @Override
    public void salvar() {
        // Implementação
    }

    @Override
    public void deletar() {
        // Implementação
    }
}

public class Cliente {
    private Repositorio repositorio;

    public Cliente(Repositorio repositorio) {
        this.repositorio = repositorio;
    }

    // Métodos que utilizam repositorio
}

// Uso:
Repositorio repositorio = new RepositorioMySQL();
Cliente cliente = new Cliente(repositorio);
```

Estes exemplos mostram como aplicar cada um dos princípios SOLID em Java, melhorando a modularidade, a manutenção e a extensibilidade do código.
### Benefícios de Seguir os Princípios SOLID

- **Manutenibilidade**: Facilita a atualização e correção do software, minimizando o impacto de mudanças.
- **Reutilização**: Componentes de software bem definidos podem ser facilmente reutilizados em diferentes partes do sistema ou em diferentes projetos.
- **Escalabilidade**: O código pode ser estendido com novas funcionalidades sem a necessidade de grandes reformulações.
- **Testabilidade**: Código modular e com responsabilidades bem definidas é mais fácil de ser testado, especialmente com testes unitários.

Esses princípios, quando aplicados corretamente, ajudam a criar sistemas de software robustos, flexíveis e fáceis de manter.

#### 4.1.6 Refatoração com SOLID: SRP

![[Refatoração com SOLID SRP.mp4]]

### 4.2 Hands-on de Refatoração

#### 4.2.1 Hands-on - Refatorando a Video Locadora - Parte 1

![[Hands-on - Refatorando a Video Locadora - Parte 1.mp4]]

#### 4.2.2 Hands-on - Refatorando a Video Locadora - Parte 2

![[Hands-on - Refatorando a Video Locadora - Parte 2.mp4]]

#### 4.2.3 Hands-on - Refatorando a Video Locadora - Parte 3

![[Hands-on - Refatorando a Video Locadora - Parte 3.mp4]]

#### 4.2.4 Hands-on - Refatorando a Video Locadora - Parte 4

![[Hands-on - Refatorando a Video Locadora - Parte 4.mp4]]

#### 4.2.5 Hands-on - Refatorando a Video Locadora - Parte 5

![[Hands-on - Refatorando a Video Locadora - Parte 5.mp4]]

### 4.3 Exercício Prático

#### 4.3.1 ATENÇÃO: Cuidados na revisão dos trabalhos de colegas

**ATENÇÃO 1: Cuidado na Submissão do seu Trabalho**

Ao contrário do que ocorria no Curso 1, neste curso você só poderá submeter a sua atividade de revisão por pares **apenas uma** **única** **vez**. Por isso, complete sua atividade com muito cuidado, procurando fazê-la o melhor possível e só a submeta quando estiver confiante que respondeu tudo de acordo com o que foi pedido.

**ATENÇÃO 2: Revisão dos trabalhos submetidos pelos colegas**

- Solicitamos que faça a revisão do trabalho de colegas de forma a mais criteriosa possível, seguindo estritamente o que foi pedido fazer, extrapolar o que foi pedido no enunciado, nem aceitar problemas ou erros flagrantes.
    
- Identificamos alunos que, não sabemos o motivo, zeravam o trabalho sendo avaliado, sem entrar no mérito do que o responsável do trabalho tinha feito algo merecedor de zero ou não.
    
- Lembramos que avaliar o trabalho do colega também faz parte da sua avaliação e você tem que fazer uma avaliação a mais correta e criteriosa possível por três motivos: (i) Consolidar o seu conhecimento do assunto; (ii) Não prejudicar seu colega, atribuindo-lhe uma nota maior ou menor sem mérito; (iii) Além disso, não prejudicar sua própria nota, caso constatemos sua falta de critério na avaliação de trabalho de colega, principalmente zerando a nota sem motivo.
    

**ATENÇÃO 3: Cuidados na revisão dos códigos dos trabalhos de colegas**

A revisão do trabalho dos colegas deverá ser feita apenas por inspeção de código, não havendo a necessidade de executar o código recebido.

Alertamos que os códigos enviados por outros alunos poderão inadvertidamente conter elementos maliciosos com potencial de danificar sua máquina e sistema operacional, além de causar eventuais problemas de privacidade e segurança.

Dessa forma, caso deseje ainda assim executar o código do colega, recomendamos que só o faça caso o tenha inspecionado antes e saiba que é seguro.

#### 4.3.2 Tarefa avaliada por colega: Componente de Gamificação

Nesta tarefa será utilizado o TDD para desenvolver um componente de gamificação. Esse componente deve armazenar diferentes tipos de pontos que o usuário pode receber. Por exemplo, uma aplicação pode possuir pontos do tipo "moeda" e "estrela", enquanto outra pode possuir pontos do tipo "topico", "comentario" e "curtida". Esse componente deve possuir uma classe principal chamada Placar, onde deve ficar a lógica, e uma classe chamada Armazenamento, que deve ser responsável por guardar e recuperar as informações de um arquivo.

A classe **Armazenamento** deve ser capaz de realizar as seguintes operações:

- Armazenar que um usuário recebeu uma quantidade de um tipo de ponto. Por exemplo: o usuário "guerra" recebeu "10" pontos do tipo "estrela"
    
- Recuperar quantos pontos de um tipo tem um usuário. Por exemplo: retornar quantos pontos do tipo "estrela" tem o usuário "guerra"
    
- Retornar todos os usuários que já receberam algum tipo de ponto.
    
- Retornar todos os tipos de ponto que já foram registrados para algum usuário.
    

_Observação: os dados devem ser armazenados em um arquivo e como serão armazenados fica a critério do aprendiz. A seção "Formas de implementar o armazenamento em arquivo" dá algumas sugestões._

A classe **Placar** é composta por uma instância de Armazenamento, a quem delega a recuperação e o armazenamento das informações. A classe Placar deve ter métodos que executam as seguintes operações:

- Registrar um tipo de ponto para um usuário. Por exemplo: o usuário "guerra" recebeu "10" pontos do tipo "estrela"
    
- Retornar todos os pontos de um usuário. Por exemplo: ao pedir os pontos do usuário "guerra" ele me retornaria que possui "20" pontos do tipo "moeda" e "25" pontos do tipo "estrela". Um tipo de ponto que o usuário não possuir, não deve ser retornado com valor "0". Por exemplo: se o usuário "guerra" não possui pontos do tipo "energia", esses não devem ser incluídos na resposta.
    
- Retornar ranking de um tipo de ponto, com a lista de usuário que possuem aquele ponto ordenados do que possui mais para o que possui menos. Por exemplo: ao pedir o ranking de "estrela", seria retornado "guerra" com "25", "fernandes" com "19" e "rodrigo" com "17". Um usuário que não possui pontos daquele tipo não seria incluído no ranking. Por exemplo, o usuário "toco" sem pontos do tipo "estrela" não seria incluído.
    

Os testes da classe Armazenamento devem ser feitos utilizando arquivos e os testes da classe Placar devem ser feitos criando um mock object para a instância de Armazenamento. Por fim, devem ser criados alguns testes de integração incluindo as duas classes.

A criação de outras classes e a assinatura dos métodos fica a critério do aprendiz, desde que cumpra os requisitos solicitados. Com a exceção de construtores e métodos de acesso, nenhum outro método público pode ser adicionado nas classes Armazenamento e Placar.

Não esqueça de utilizar o TDD para o desenvolvimento e de refatorar sempre o código para manter a sua qualidade!

Visão geral dos critérios de avaliação

Você será avaliado com base no seguinte:

- Cumprimento dos requisitos de implementação pedidos no enunciado
    
- Organização do código implementado
    
- Uso correto de Mock Objects
    
- Divisão correta de responsabilidades entre as classes
    
Formas de implementar o armazenamento em arquivo

É deixado livre a forma como os dados de pontuação do usuário serão armazenado em um arquivo, desde que os requisitos sejam cumpridos. É importante que outras classes não dependam de forma alguma de como é feita essa armazenagem no arquivo.

Uma abordagem para armazenar os dados seria fazer isso de uma forma incremental. Sempre só adicionando dados no arquivo. Nesse caso, para saber a pontuação de um usuário, seria necessário percorrer todo o arquivo procurando por todos os dados a respeito dele.

Outra abordagem seria ter um registro para cada usuário dentro do arquivo e modificar esse registro à medida que novos dados forem chegando.

Independente da abordagem de armazenar no arquivo, você pode também guardar um cache dos dados em memória. O único requisito nesse caso é que se a aplicação cair, deve-se recuperar todos os dados armazenados.

A pesquisa faz parte da rotina de qualquer profissional de computação, sendo assim, é considerado parte desse exercício a pesquisa das classes que podem ser utilizadas para a interação com arquivos. Lembre-se de ir seguindo o TDD e fazendo a implementação passo a passo. Você verá que assim é bem mais fácil de utilizar uma classe que você ainda não conhece.

### 4.4 Material Complementar

#### 4.4.1 Código Fonte da Vídeo-Locadora

Ver código fonte da Video-Locadora



