!
! Programa para imprimir cinco valores inteiros na ordem inversa a de leitura
!
! Vers�o melhorada e escal�vel utilizando vari�veis indexadas
!
PROGRAM inversaMelhor
   IMPLICIT NONE
   INTEGER :: valores(5), indice
   
   WRITE(*, *) "impress�o de cinco valores inteiros na ordem inversa a de leitura:"
   WRITE(*, *)
   WRITE(*, *) "Informe os 5 valores inteiros:"
   DO indice = 1, 5, 1
      READ(*, *) valores(indice)
   END DO
   WRITE(*, *) "Apresenta�ao dos 5 valores inteiros na orden inversa:"
   DO indice = 5, 1, -1
      WRITE(*, *) valores(indice)
   END DO
   STOP
END PROGRAM inversaMelhor

     