!
! Somar os pares entre 10 inteiros
!
PROGRAM soma_pares
    IMPLICIT NONE
    INTEGER :: contador, numero, soma = 0
    
    WRITE (*, *) "Soma os pares entre 10 inteiros:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a analisar:"
        READ (*, *) numero
        IF (mod(numero, 2) == 0) THEN
            soma = soma + numero
        END IF
    END DO
    WRITE (*, *) "A soma dos numeros pares eh" soma
    STOP
END PROGRAM soma_pares
