!
! Programa que l� e imprime o nome de uma pessoa entre par�nteses
!
PROGRAM mostra_nome
   IMPLICIT NONE
   CHARACTER (LEN = 30) :: nome

   ! Apresenta��o fa finalidad do programa
   WRITE (*, *) "L� e imprime o nome de uma pessoa entre par�nteses:"
   WRITE (*, *)
   ! Leitura dos dados de entrada
   WRITE (*, *) "Digite o nome a ser mostrado: "
   WRITE (*, *)
   READ (*, *) nome
   ! Apresenta��o dos dados de sa�da
   WRITE (*, *) "Nome lido:"
   WRITE (*, *) "(", nome, ")"
   STOP
END PROGRAM mostra_nome