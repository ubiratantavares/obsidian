!
! Mostrar os N primeiros n�meros triangulares (n�mero triangular = soma de tr�s naturais consecutivos)
!
PROGRAM n_primeiros_triangulares
    IMPLICIT NONE
    INTEGER :: n, natural
    
    WRITE (*, *) "Mostrar os N primeiros n�meros triangulares"
    WRITE (*, *) "n�mero triangular = soma de tr�s naturais consecutivos"
    WRITE (*, *)
    WRITE (*, *) "Qual o valor de N?"
    READ (*, *) n
    WRITE (*, *)
    WRITE (*, *) "Os", n, " primeiros numeros triangulares sao:"
    DO natural = 0, n - 1, 1
        WRITE (*, *) natural * (natural + 1) * (natural + 2)
    END DO
    STOP
END PROGRAM n_primeiros_triangulares
