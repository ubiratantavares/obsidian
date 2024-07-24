!
! Contar os divisores de um número inteiro positivo
!
PROGRAM conta_divisores
    IMPLICIT NONE
    INTEGER :: divisor, numero, conta_div
    
    WRITE (*, *) "Mostra a quantidade de divisores de um numero inteiro positivo:"
    WRITE (*, *) "Informe um inteiro positivo para que seja mostrado seus divisores:"
    READ (*, *) numero
    WRITE(*, *)
    conta_div = 0
    DO divisor = 1, numero, 1
        IF (mod(numero, divisor) == 0) THEN
            conta_div = conta_div + 1
        END IF
    END DO
    WRITE (*, *) "O numero de divisores de", numero, " eh", conta_div
    STOP
END PROGRAM conta_divisores
