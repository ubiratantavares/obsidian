!
! Mostrar os divisores de um número inteiro positivo
!
PROGRAM mostra_divisores
    IMPLICIT NONE
    INTEGER :: divisor, numero
    
    WRITE (*, *) "Mostra os divisores de um número inteiro positivo:"
    WRITE (*, *) "Informe um inteiro positivo para que seja mostrado seus divisores:"
    READ (*, *) numero
    WRITE(*, *)
    WRITE (*, *) "Divisores do numero lido:"
    DO divisor = 1, numero, 1
        IF (mod(numero, divisor) == 0) THEN
            WRITE (*, *) divisor
        END IF
    END DO
    STOP
END PROGRAM mostra_divisores
