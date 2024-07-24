!
! Mostrar os fatoriais de N números lidos
!
PROGRAM n_fatoriais
    IMPLICIT NONE
    INTEGER :: n, fatorial, vezes, numero, fator
    
    WRITE (*, *) "Mostrar os fatoriais de N números lidos:"
    WRITE (*, *) "Informe a quantidae de números para calculo dos fatoriais:"
    READ (*, *) n
    DO vezes = 1, n, 1
        WRITE (*, *) "Informe um inteiro não negativo para calculo do fatorial:"
        READ (*, *) numero
        fatorial = 1
        DO fator = 1, numero, 1
            fatorial = fatorial * fator
        END DO
        WRITE (*, *) "O fatorial de", numero, " eh", fatorial
    END DO
    STOP
END PROGRAM n_fatoriais
