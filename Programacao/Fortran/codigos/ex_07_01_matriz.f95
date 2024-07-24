!
!  Ler os dados de uma matriz real 4x5, na ordem de linhas, e imprimir a matriz lida no formato padrão
!
PROGRAM matriz
    IMPLICIT NONE
    INTEGER :: i, j
    REAL :: mat(4, 5)

    WRITE (*, *) "Le e mostra matriz real 4x5:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 20 elementos reais da matriz:"
    READ (*, *) ((mat(i, j), j = 1, 5, 1), i = 1, 4)
    WRITE (*, *)
    WRITE (*, *) "Matriz real 3x4 lida:"
    WRITE (*, *)
    DO i = 1, 4, 1
        WRITE (*, *) (mat(i, j), j = 1, 5, 1)
    END DO
    
    STOP         
END PROGRAM matriz
