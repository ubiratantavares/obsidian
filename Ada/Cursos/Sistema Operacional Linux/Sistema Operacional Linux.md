1. Introdução ao Linux

2. Exercícios de Fixação I

Questão 1: O que é o Linux?

a. Um sistema operacional fechado e proprietário.
**b. Um sistema operacional de código aberto.**
c. Um sistema operacional desenvolvido pela Microsoft.
d. Um sistema operacional exclusivo para dispositivos móveis.

Questão 2: O que significa ser um software livre e de código aberto?

a. O software é disponibilizado gratuitamente para uso, mas seu código-fonte não é acessível.
b. O software é desenvolvido por uma única pessoa ou empresa.
c. O software possui restrições de uso e distribuição.
**d. O software tem seu código-fonte disponível para acesso, modificação e distribuição.**

Questão 3: Qual das licenças a seguir é comumente utilizada na plataforma Linux?

**a. GPL**
b. Microsoft
c. Proprietária
d. Adobe

Questão 4: Qual distribuição de Linux é conhecida por ser amigável para usuários iniciantes?

**a. Ubuntu**
b. Debian
c. Fedora
d. CentOS

Questão 5: Qual é a diferença entre GUI e CLI no contexto do Linux?

**a. A GUI é uma interface gráfica, enquanto a CLI é uma interface de linha de comando.**
b. A GUI é mais complexa do que a CLI.
c. A GUI é exclusiva do Linux, enquanto a CLI é usada em outros sistemas operacionais.
d. A GUI é preferida por usuários avançados, enquanto a CLI é mais amigável para iniciantes.

3. Introdução ao terminal/bash

Verifica a distribuição do linux usado

```bash
cat /etc/issue
```

4. Exercício de Fixação II

Questão 1: Qual é a função do Terminal do Linux?

a. É um programa que permite a interação com o sistema operacional Windows.
b. É um programa que permite a criação de interfaces gráficas no Linux.
c. É um programa que permite a reprodução de mídia no sistema operacional Linux.
**d. É um programa que permite que os usuários interajam com o sistema operacional Linux através da interpretação de comandos de texto.**

Questão 2: Qual é a relação entre o Terminal e o Bash no Linux?

a. O Terminal é uma versão mais antiga do Bash.
b. O Terminal é um shell que interpreta e executa comandos, enquanto o Bash é um programa de interface de linha de comando.
c. O Terminal e o Bash são sinônimos e podem ser usados indistintamente.
**d. O Terminal é a interface de linha de comando, e o Bash é o shell que interpreta e executa os comandos digitados nele.**

Questão 3: O que representa o símbolo '#' no prompt de comando no Terminal do Linux?

a. Indica que ocorreu um erro no último comando digitado.
b. Indica que o shell está em modo de espera.
**c. Indica que o usuário está conectado como administrador do sistema.**
d. Indica que o comando digitado não é reconhecido pelo sistema.

Questão 4: Qual é o significado do símbolo '~' no prompt de comando do Terminal do Linux?

**a. É uma abreviação para o diretório home do usuário.**
b. Indica que o shell está em modo de espera.
c. Indica que o usuário está conectado como administrador do sistema.
d. Indica que ocorreu um erro no último comando digitado.

Questão 5: Qual das funcionalidades abaixo faz parte do Bash, o interpretador de comandos do Linux?

a. Interface gráfica intuitiva.
b. Sistema de monitoramento de recursos.
**c. Recursos de autocompletar.**
d. Editor de texto integrado.

5. Executando os primeiros comandos

```bash
pwd
```

```bash
whoami
```

```bash
cd ~
```

```bash
cd -
```

```bash
ls
```

```bash
ls -l
```

```bash
ls -lr
```

```bash
ls --help
```

```bash
clear
```

```bash
cd pasta01
```

```bash
cat arquivo.txt
```

6. Exercícios de Fixação III

Questão 1: Qual é o significado do comando pwd no Terminal do Linux?

a. Mostra os comandos executados recentemente.
b. Lista os arquivos presentes no diretório atual.
**c. Imprime o caminho do diretório de trabalho atual.**
d. Exibe informações sobre o perfil do usuário logado.

Questão 2: Qual é o significado do comando ls no Terminal do Linux?

a. Executa um comando de ajuda e exibe as opções disponíveis para o comando ls.
**b. Lista os arquivos e diretórios existentes no diretório atual ou em um diretório específico.**
c. Exibe informações detalhadas sobre um arquivo específico.
d. Realiza uma busca de arquivos no sistema com base em critérios específicos.

Questão 3: Qual é a opção do comando ls no Terminal do Linux que permite exibir os arquivos ocultos?

a. -h
**b. -a**
c. -l
d. --help

Questão 4: Como retornar ao diretório home do usuário no Terminal do Linux?

a. cd ..
b. cd home
**c. cd ~**
d. cd /

Questão 5: Qual comando é utilizado para limpar a tela do terminal no Linux?

a. cls
b. clean
**c. clear**
d. reset

7. Identificando e criando arquivos e diretórios

```bash
ls -l
cd pasta02
ls -l
pwd
cd ..
cd /home/andre/linux
touch arquivo.txt
mkdir diretorio
cd diretorio/
mkdir -p diretorio1/diretorio2/diretorio3
tree
```

8. Exercícios de fixação IV

Questão 1: Na listagem de arquivos e diretórios, qual caractere indica que o item listado é um diretório?

a. -
**b. d**
c. l
d. *

Questão 2: O que significa o caractere l na listagem de arquivos e diretórios?

a. Arquivo oculto.
**b. Link simbólico.**
c. Arquivo de texto.
d. Diretório de sistema.

Questão 3: O que é um caminho absoluto em um sistema Linux?

a. Um caminho que começa a partir do diretório atual onde o usuário está trabalhando.
b. Um caminho que contém apenas o nome do arquivo, sem indicar diretórios.
**c. Um caminho que começa a partir da raiz do sistema.**
d. Um caminho que aponta para um link simbólico em vez de um arquivo ou diretório.

Questão 4: Qual comando é comumente utilizado para criar um arquivo vazio no Linux?

a. mkdir
b. ls
**c. touch**
d. rm

Questão 5: Como podemos criar um arquivo chamado 'welcome.txt' com o conteúdo 'Welcome to Linux!' utilizando o comando echo?

a. echo "Welcome to Linux!" -f welcome.txt
**b. echo "Welcome to Linux!" > welcome.txt**
c. echo welcome.txt "Welcome to Linux!"
d. echo welcome.txt -o "Welcome to Linux!"


1. Copiando e apagando arquivos e diretórios
2. Exercícios de fixação V
3. Instalando programas e movendo arquivos e diretórios
4. Exercícios de fixação VI
5. Visualizando o conteúdo e editando arquivos
6. Exercícios de fixação VI
7. Comprimindo arquivos e diretórios
8. Exercícios de fixação VII
9. Um pouco sobre shell script e permissões
10. Exercícios de fixação VIII
11. Procurando arquivos e diretórios
12. Exercícios de fixação IX
