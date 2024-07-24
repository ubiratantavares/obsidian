     program soma				! Inicia o programa chamado soma
     integer k, n, m			! Declara que k, m e n são variáveis inteiras
     real a, b, c				! Declara que a, b e c são variáveis reais
     character*2 estado			! Declara que estado é string com 2 caracteres
     character*3 codigo			! Declara que codigo é string com 3 caracteres
     character*5 tudo			! Declara que tudo é sring com 5 caracteres
     n = 1						! Atribui o valor 1 a variavel n
     m = 3						! Atribui o valor 3 a variavel m
     k = m + n					! Soma m e n, e o resultado armazenado em k
     a = 2.5					! Atribui o valor 2.5 a variavel a
     b = 1.0			        ! Atribui o valor 1.0 a variavel b
     c = a + b					! Soma a e b, e o resultado é armazenado em c
     print*, k, c				! Escreve na tela a variavel k e c
     estado = 'SP'				! Atribui a string SP a variavel estado
     codigo = '01a'				! Atribui a string 01a a variavel codigo
     tudo = estado//codigo		! concatena estado e codigo e atribui a tudo
     print*, tudo				! Escreve na tela a variavel tudo
     stop						! Para a execução do programa
     end						! Fim do programa soma
     
