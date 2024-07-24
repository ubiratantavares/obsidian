!
! Somar, contar, calcular o produto e a média dos pares entre 10 inteiros
!
PROGRAM media_pares
    IMPLICIT NONE
    INTEGER :: contador, numero, conta_par = 0, produto = 1
    REAL :: soma = 0, media
    
    WRITE (*, *) "Soma, conta, calcula o produto e a media dos pares entre 10 inteiros:"
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
        media = soma / conta_par
        WRITE (*, *) "A media dos numeros pares eh", media
    END IF
    STOP
END PROGRAM media_pares