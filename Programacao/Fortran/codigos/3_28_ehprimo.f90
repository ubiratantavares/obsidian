!
! Programa para para verificar se um numero inteiro positivo é ou nao primo
!
PROGRAM ehprimo
   IMPLICIT NONE
   INTEGER :: numero, divisor, conta_divisores
   
   WRITE (*, *) "Programa para para verificar se um numero inteiro positivo é ou nao primo:"
   WRITE (*, *)
   WRITE (*, *) "Informe o numero para vwrificar se ele eh ou nao primo: "
   READ (*, *) numero
   conta_divisores = 0
   DO divisor = 1, numero, 1
      IF (MOD(numero, divisor) == 0) THEN
         conta_divisores= conta_divisores + 1
      END IF
   END DO
   IF (conta_divisores <= 2) THEN
      WRITE (*, *) "O numero ", numero, " eh primo!"
   ELSE
      WRITE (*, *) "O numero ", numero, " nao eh primo!"
   END IF
   STOP
END PROGRAM ehprimo

