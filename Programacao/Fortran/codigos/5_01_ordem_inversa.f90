!
! Programa para imprimir cinco valores inteiros na ordem inversa a de leitura
!
PROGRAM inversa
   IMPLICIT NONE
   INTEGER :: v1, v2, v3, v4, v5

   WRITE(*, *) "impressão de cinco valores inteiros na ordem inversa a de leitura:"
   WRITE(*, *)
   WRITE(*, *) "Informe os 5 valores inteiros:"
   READ(*, *) v1, v2, v3, v4, v5
   WRITE(*, *) "Apresentaçao dos 5 valores inteiros na ordem inversa:"
   WRITE(*, *) v5
   WRITE(*, *) v4
   WRITE(*, *) v3
   WRITE(*, *) v2
   WRITE(*, *) v1
   STOP
END PROGRAM inversa

     
