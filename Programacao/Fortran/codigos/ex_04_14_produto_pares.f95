!
! Somar, contar e calcular o produto dos pares entre 10 inteiros
!
PROGRAM produto_pares
    IMPLICIT NONE
    INTEGER :: contador, numero, soma = 0, conta_par = 0, produto = 1
    
    WRITE (*, *) "Soma, conta e calcula o produto dos pares entre 10 inteiros:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a analisar:"
        READ (*, *) numero
        IF (mod(numero, 2) == 0) THEN
            soma = soma + numero
            conta_par = conta_par + 1
            produto = produto * numero
        END IF
    END DO
    WRITE (*, *) "A soma dos numeros pares eh", soma
    WRITE (*, *) "A quantidade de pares eh", conta_par
    IF (conta_par /= 0) THEN
        WRITE (*, *) "O produto dos numeros pares eh", produto
    END IF
    STOP
END PROGRAM produto_pares