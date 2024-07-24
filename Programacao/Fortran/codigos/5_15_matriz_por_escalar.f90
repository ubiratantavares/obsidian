!
! Programa que calcula o produto de uma matriz m x n por um valor escalar e
!
PROGRAM matriz_por_escalar
    IMPLICIT NONE
    INTEGER :: matriz_operando(50, 50), m, n, i, j, e, matriz_produto(50, 50)
  
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Cáculo do produto de uma matriz M x N por um valor escalar e: "
    WRITE (*, *)
    ! Leitura dos dados de entrada
    WRITE (*, *) "Informe o número de linhas M (menor ou igual a 50): "
    READ (*, *) m
    WRITE (*, *) "Informe o número de colunas N (menor ou igual a 50): "
    READ (*, *) n
    WRITE (*, *) "Informe o valor do escalar e: "
    READ (*, *) e
    WRITE (*, *) "Informe os", m * n, " elementos inteiros da matriz: "
    WRITE (*, *)
    READ (*, *) ((matriz_operando(i, j), j = 1, n, 1), i = 1, m, 1)
    ! Cálculo do produto
    DO i = 1, m, 1
        DO j = 1, n, 1
            matriz_produto(i, j) = matriz_operando(i, j) * e
        END DO
    END DO
    ! Impressão da matriz operando
    WRITE (*, *)
    WRITE (*, *) "Matriz operando M x N: "
    DO i = 1, m, 1
        WRITE(*, *) (matriz_operando(i, j), j = 1, n, 1)
    END DO
    ! Impressão do escalar
    WRITE (*, *)
    WRITE (*, *) "Escalar multiplicador = ", e
    ! Impressão da matriz produto
    WRITE (*, *)
    WRITE (*, *) "Matriz produto M x N: "
    DO i = 1, m, 1
        WRITE(*, *) (matriz_produto(i, j), j = 1, n, 1)
    END DO
    WRITE (*, *)
   STOP
END PROGRAM matriz_por_escalar
   