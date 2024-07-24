!
! Somar 10 inteiros
!
PROGRAM soma_10_inteiros
    IMPLICIT NONE
    INTEGER :: contador, numero, soma = 0
    
    WRITE (*, *) "Somar 10 inteiros quaisquer:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a somar:"
        READ (*, *) numero
        soma = soma + numero
    END DO
    WRITE (*, *) "A soma dos numeros lidos eh", soma
    STOP
END PROGRAM soma_10_inteiros
