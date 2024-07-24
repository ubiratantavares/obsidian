!
! Programa que faz a subtração de duas matrizes inteiras 3x4 (primeira - segunda)
!
PROGRAM diferencaMatriz3x4
    IMPLICIT NONE
    INTEGER :: matA(4,5), matB(4,5), matTotal(4,5), l, c
   
    WRITE(*,*) "Programa que faz a diferença de duas matrizes inteiras 3x4: "
    WRITE(*,*)
    WRITE(*,*) "Informe os dados para a primeira matriz 3x4: "
    READ(*,*) ((matA(l, c), c = 1, 4, 1),l = 1, 3, 1)
    WRITE(*,*) "Informe os dados para a segunda matrix 3x4: "
    READ(*,*) ((matB(l, c), c = 1, 4, 1),l = 1, 3, 1)
    ! Subtraçao das matrizes
    DO l = 1, 3, 1
        DO c = 1, 4, 1
            matTotal(l, c) = matA(l, c) + matB(l, c)
        END DO
    END DO
    WRITE(*,*) "Apresentacao da matriz diferença 3x4 (primeira - segunda): "
    DO l = 1, 3, 1
        WRITE(*, *) (matTotal(l, c), c = 1, 4, 1)
    END DO
    STOP
END PROGRAM diferencaMatriz3x4

