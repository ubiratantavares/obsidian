! Este programa calcula a raiz quadrada de um numero
! Utilizando a fun��o intriseca SQRT
     program funcoes
     implicit none
     real x, y
     print *, 'Entre com um numero real'
     read *, x
     y = sqrt(x)
     print *, 'A raiz quadrada do numero dado : ', y
     stop
     end
     