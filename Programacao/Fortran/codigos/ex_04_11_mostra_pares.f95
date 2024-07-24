!
! Mostrar os pares entre 10 inteiros
!
PROGRAM mostra_pares
    IMPLICIT NONE
    INTEGER :: contador, numero
    
    WRITE (*, *) "Mostrar os pares entre 10 inteiros:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a analisar:"
        READ (*, *) numero
        IF (mod(numero, 2) == 0) THEN
            WRITE (*, *) "O número", numero, " eh par!"
        END IF
    END DO
    STOP
END PROGRAM mostra_pares
