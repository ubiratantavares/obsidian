!
! Programa para para verificar se o primeiro de 2 numeros lidos eh divisivel
! pelo segundo. Sendo o primeiro sempre maior que o segundo.
!
PROGRAM divisivel
   IMPLICIT NONE
   INTEGER :: int1, int2
   
   WRITE (*, *) "Programa para verificar se o primeiro numero eh divisivel pelo segundo:"
   WRITE (*, *)
   WRITE (*, *) "Informe os 2 inteiros positivos, com o primeiro maior que o segundo: "
   READ (*, *) int1, int2
   IF (MOD(int1, int2) == 0) THEN
      WRITE (*, *) "O primeiro eh divisivel pelo segundo!"
   ELSE
      WRITE (*, *) "O primeiro nao eh divisivel pelo segundo!"
   END IF
   STOP
END PROGRAM divisivel

