!
! Mostrar fatorial de um n�mero lido
!
PROGRAM mostra_fatorial
    IMPLICIT NONE
    INTEGER :: fatorial, numero, fator
    
    WRITE (*, *) "Mostrar o fatorial de um n�mero lido:"
    WRITE (*, *) "Informe um inteiro n�o negativo para calculo do fatorial:"
    READ (*, *) numero
    fatorial = 1
    DO fator = 1, numero, 1
        fatorial = fatorial * fator
    END DO
    WRITE (*, *) "O fatorial de", numero, " eh", fatorial
    STOP
END PROGRAM mostra_fatorial
