!
! Calcula e mostra a matriz transposta de uma matriz 4x5
!
PROGRAM transposta
    IMPLICIT NONE
    INTEGER :: original(4,5), transp(5, 4), i, j
   
    WRITE(*, *) "Calcula e mostra a matriz transposta de uma matriz 4x5:"
    WRITE(*, *)
    WRITE(*, *) "Informe os valores dos elementos da matriz inteira 4x5: "
    READ(*, *) ((original(i, j), j = 1, 5, 1), i = 1, 4, 1)
    WRITE(*, *) "Matriz inteira 4x5 lida: "
    DO i = 1, 4, 1
        WRITE(*, *) (original(i, j), j = 1, 5, 1)
    END DO
    ! Cálculo da transposta
    DO i = 1, 4, 1
        DO j = 1, 5, 1
            transp(j, i) = original(i, j)
        END DO
    END DO
    ! Apresentação da matriz transposta
    WRITE(*, *) "Matriz tranposta 5x4 calculada: "
    DO i = 1, 5, 1
        WRITE(*, *) (transp(i, j), j = 1, 4, 1)
    END DO
    STOP   
END PROGRAM transposta
