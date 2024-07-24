!
! Somar, contar, calcular o produto e a média dos impares entre 10 inteiros
!
PROGRAM impares
    IMPLICIT NONE
    INTEGER :: contador, numero, conta_impar = 0, produto = 1
    REAL :: soma = 0, media
    
    WRITE (*, *) "Soma, conta, calcula o produto e a media dos impares entre 10 inteiros:"
    DO contador = 1, 10, 1
        WRITE (*, *) "Informe um inteiro a analisar:"
        READ (*, *) numero
        IF (mod(numero, 2) == 0) THEN
            soma = soma + numero
            conta_impar = conta_impar + 1
            produto = produto * numero
        END IF
    END DO
    WRITE (*, *) "A soma dos numeros impares eh", soma
    WRITE (*, *) "A quantidade de impares eh", conta_impar
    IF (conta_impar /= 0) THEN
        WRITE (*, *) "O produto dos numeros impares eh", produto
        media = soma / conta_impar
        WRITE (*, *) "A media dos numeros impares eh", media
    END IF
    STOP
END PROGRAM impares