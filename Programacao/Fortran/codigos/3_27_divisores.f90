!
! Programa para para calcular e mostrar os divisores de um numero inteiro positivo
!
PROGRAM divisores
   IMPLICIT NONE
   INTEGER :: numero, divisor
   
   WRITE (*, *) "Programa para mostra os divisores de um inteiro positivo:"
   WRITE (*, *)
   WRITE (*, *) "Informe o numero para clculo de seus divisores: "
   READ (*, *) numero
   DO divisor = 1, numero, 1
      IF (MOD(numero, divisor) == 0) THEN
         WRITE (*, *) divisor, " eh divisor de ", numero
      END IF
   END DO
   STOP
END PROGRAM divisores

