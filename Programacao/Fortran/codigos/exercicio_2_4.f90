!
! Exerc�cio 2.4
!
!
! Programa para converter o valor de um angulo em graus para radianos
!
PROGRAM calcula_radianos
   IMPLICIT NONE
   REAL :: graus, radianos

   ! Mostra a finalidade do programa
   WRITE (*, *) "Convers�o do valor de um angulo em graus para radianos:"
   WRITE (*, *)
   ! Solicita��o dos dados de entrada
   WRITE (*, *)  "Informe o valor do angulo em graus: "
   READ (*, *) graus
   ! Convers�o de graus para radianos
   radianos = graus * 3.14159 / 180
   ! Sa�da do programa
   WRITE (*, *) "�ngulo em Graus = ", graus
   WRITE (*, *)
   WRITE (*, *) "�ngulo convertido em Radianos = ", radianos
   STOP
END PROGRAM calcula_radianos
