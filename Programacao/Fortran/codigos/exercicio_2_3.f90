!
! Exercício 2.3
!
! Fazer um programa que calcule e imprima os valores das funções abaixo,
! para um valor de x lido.
!
!                 y = x2 – 5x + 6
!
!                 z = 2x – 4!
!
PROGRAM calcula_funcoes
   IMPLICIT NONE
   REAL :: x, y, z

   ! Mostra a finalidade do programa
   WRITE (*, *) "Programa para calcular e imprimir os valores das funções a seguir:"
   WRITE (*, *) 
   WRITE (*, *) "                    y = x2 - 5x + 6"
   WRITE (*, *)
   WRITE (*, *) "                    z = 2x - 4"
   WRITE (*, *)
   ! Solicitação dos dados de entrada
   WRITE (*, *) "Informe o valor de x para as funções: "
   READ (*, *) x
   ! Cálculo dos valores da funções
   y = x ** 2 - 5 * x + 6
   z = 2 * x - 4
   ! Impressão do resultado do programa
   WRITE (*, *) "Para x = ", x, ":"
   WRITE (*, *)
   WRITE (*, *) "Valor de y, para a função y = x2 – 5x + 6 = ", y
   WRITE (*, *) "Valor de z, para a funçao z = 2x – 4 = ", z
   STOP
END PROGRAM calcula_funcoes
