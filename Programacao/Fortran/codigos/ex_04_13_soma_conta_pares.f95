!
! Somar e contar os pares entre 10 inteiros
!
PROGRAM soma_conta_pares
    IMPLICIT NONE
    INTEGER :: contador, numero, soma = 0, conta_par = 0
    
    WRITE (*, *) "Soma e conta os pares entre 10 inteiros:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a analisar:"
        READ (*, *) numero
        IF (mod(numero, 2) == 0) THEN
            soma = soma + numero
            conta_par = conta_par + 1
        END IF
    END DO
    WRITE (*, *) "A soma dos numeros pares eh", soma
    WRITE (*, *) "A quantidade de pares eh", conta_par
    STOP
END PROGRAM soma_conta_pares
