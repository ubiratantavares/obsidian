!
! Programa para mostrar o maior e o menor elementos de uma matriz M x N
!
PROGRAM maiorMenorMatriz
    IMPLICIT NONE
    INTEGER :: matriz(20, 20), i, j, m, n, maior, menor
   
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Mostra o maior e o menor elementos de uma matriz M x N: "
    WRITE (*, *)
    ! Leitura dos dados de entrada
    WRITE(*, *) "Informe o numero de linhas M da matriz inteira (máximo = 20): "
    READ(*, *) m
    WRITE(*, *) "Informe o numero de colunas N da matriz inteira (máximo = 20): "
    READ(*, *) n
    WRITE(*, *) "Informe os", m * n, " valores dos elementos da matriz inteira MxN: "
    READ(*, *) ((matriz(i, j), j = 1, n, 1), i = 1, m, 1)
    ! Apresentação da matriz
    WRITE(*, *) "Matriz inteira MxN lida: "
    DO i = 1, m, 1
        WRITE(*, *) (matriz(i, j), j = 1, n, 1)
    END DO
    ! Pequisa do maior e menor elementos
    maior = matriz(1, 1)
    menor = matriz(1, 1)
    DO i = 1, m, 1
        DO j = 1, n, 1
            IF (matriz(i, j) > maior) THEN
                maior = matriz(i, j)
            END IF
            IF (matriz(i, j) < menor) THEN
                menor = matriz(i, j)
            END IF
        END DO         
    END DO
    ! Apresentação dos valores pesquisados
    WRITE(*, *) "Maior elemento = ", maior
    WRITE(*, *) "Menor elemento = ", menor
    STOP   
END PROGRAM maiorMenorMatriz

