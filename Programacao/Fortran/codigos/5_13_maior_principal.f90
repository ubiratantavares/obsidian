!
! Programa para mostrar o maior elemento da diagonal principal de uma matriz
! quadrada inteira de ordem 5
!
PROGRAM diagPrincipal
    IMPLICIT NONE
    INTEGER :: matriz(5, 5), i, j, maior
   
    WRITE(*, *) "Mostra o maior elemento da diagonal principal de uma matriz quadrada de ordem 5: "
    WRITE(*, *)
    ! Leitura dos elementos da matriz
    WRITE(*, *) "Informe os valores inteiros para a matriz de ordem 5: "
    READ(*, *) ((matriz(i, j), j = 1, 5, 1), i = 1, 5, 1)
    ! Apresentaçao da matriz
    WRITE(*, *) "Matriz lida de ordem 5: "
    DO i = 1, 5, 1
        WRITE(*, *) (matriz(i, j), j = 1, 5, 1)
    END DO
    WRITE(*, *) "Elementos da Diagonal Principal: "
    WRITE(*, *) (matriz(i, i), i = 1, 5, 1)
    maior = matriz(1, 1)
    DO i = 2, 5, 1
        IF (matriz(i, i) > maior) THEN
            maior = matriz(i, i)
        END IF
    END DO
    WRITE(*, *) "Maior elemento da diagonal principal = ", maior
    STOP   
END PROGRAM diagPrincipal

