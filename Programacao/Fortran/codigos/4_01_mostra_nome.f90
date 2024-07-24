!
! Programa que lê e imprime o nome de uma pessoa entre parênteses
!
PROGRAM mostra_nome
   IMPLICIT NONE
   CHARACTER (LEN = 30) :: nome

   ! Apresentação fa finalidad do programa
   WRITE (*, *) "Lê e imprime o nome de uma pessoa entre parênteses:"
   WRITE (*, *)
   ! Leitura dos dados de entrada
   WRITE (*, *) "Digite o nome a ser mostrado: "
   WRITE (*, *)
   READ (*, *) nome
   ! Apresentação dos dados de saída
   WRITE (*, *) "Nome lido:"
   WRITE (*, *) "(", nome, ")"
   STOP
END PROGRAM mostra_nome