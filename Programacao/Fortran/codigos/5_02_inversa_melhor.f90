!
! Programa para imprimir cinco valores inteiros na ordem inversa a de leitura
!
! Versão melhorada e escalável utilizando variáveis indexadas
!
PROGRAM inversaMelhor
   IMPLICIT NONE
   INTEGER :: valores(5), indice
   
   WRITE(*, *) "impressão de cinco valores inteiros na ordem inversa a de leitura:"
   WRITE(*, *)
   WRITE(*, *) "Informe os 5 valores inteiros:"
   DO indice = 1, 5, 1
      READ(*, *) valores(indice)
   END DO
   WRITE(*, *) "Apresentaçao dos 5 valores inteiros na orden inversa:"
   DO indice = 5, 1, -1
      WRITE(*, *) valores(indice)
   END DO
   STOP
END PROGRAM inversaMelhor

     