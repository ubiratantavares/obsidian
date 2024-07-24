!
! Exercício 2.4
!
!
! Programa para converter o valor de um angulo em graus para radianos
!
PROGRAM calcula_radianos
   IMPLICIT NONE
   REAL :: graus, radianos

   ! Mostra a finalidade do programa
   WRITE (*, *) "Conversão do valor de um angulo em graus para radianos:"
   WRITE (*, *)
   ! Solicitação dos dados de entrada
   WRITE (*, *)  "Informe o valor do angulo em graus: "
   READ (*, *) graus
   ! Conversão de graus para radianos
   radianos = graus * 3.14159 / 180
   ! Saída do programa
   WRITE (*, *) "Ãngulo em Graus = ", graus
   WRITE (*, *)
   WRITE (*, *) "Ãngulo convertido em Radianos = ", radianos
   STOP
END PROGRAM calcula_radianos
