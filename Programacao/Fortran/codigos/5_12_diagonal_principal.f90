!
! Programa que le os elementos de uma matriz real quadrada e
! mostra a matriz e os elementos da diagonal principal 
!
PROGRAM diagonal_principal
   IMPLICIT NONE
   REAL :: matriz(10, 10)
   INTEGER :: i, j, m
   
   ! Apresentaçao da finalidade do programa
   WRITE(*, *) "Apresentação dos elementos da diagonal principal de uma matriz lida: "
   WRITE(*, *)
   ! Leitura dos dados de entrada
   WRITE(*, *) "Informe a ordem da matriz: "
   READ(*, *) m
   WRITE(*, *) "Informe os valores dos elementos da matriz de ordem m: "
   READ(*, *) ((matriz(i, j), j = 1, m, 1), i = 1, m, 1)
   ! Apresentaçao da matriz lida
   WRITE(*, *) "Matriz real de ordem m lida: "
   DO i = 1, m, 1
      WRITE(*, *) (matriz(i, j), j = 1, m, 1)
   END DO
   ! Apresentação dos elementos da diagonal principal
   WRITE(*, *) "Elementos da Diagonal Principal: "
   WRITE(*, *) (matriz(i, i), i = 1, m, 1)
   STOP   
END PROGRAM diagonal_principal


