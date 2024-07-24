!
! Programa que gera e mostra uma matriz quadrada inteira com os elementos:
!       - acima da diagonal principal iguais a 1;
!       - da diagonal principal iguais a 0;
!       - abaixo da diagonal principal iguais a -1.
!
PROGRAM gera_matriz
    IMPLICIT NONE
    ! Declaração das variáveis
    INTEGER :: matriz(20, 20), i, j, m
   
    ! Apresentaçao da finalidade do programa
    WRITE(*, *) "Programa que gera e mostra uma matriz quadrada inteira de ordem M, com os elementos:"
    WRITE(*, *) "      - acima da diagonal principal iguais a 1;"
    WRITE(*, *) "      - da diagonal principal iguais a 0;"
    WRITE(*, *) "      - abaixo da diagonal principal iguais a -1."
    WRITE(*, *)
    ! Leitura da ordem da matriz
    WRITE(*, *) "Informe a ordem M da matriz (com M menor ou igual 20): "
    READ (*, *) m
    ! Geraçao da matriz
    DO i = 1, m, 1
        DO j = 1, m, 1
            IF (i == j) THEN
                matriz(i, j) = 0
            ELSE IF (i < j) THEN
                matriz(i, j) = 1
            ELSE
                matriz(i, j) = -1
            END IF
        END DO
    END DO
    ! Impressão da matriz gerada
   WRITE(*, *) "Matriz gerada: "
   DO i = 1, m, 1
      WRITE (*, *) (matriz(i, j), j = 1, m, 1)
   END DO
   STOP
END PROGRAM gera_matriz



