!
! Programa que faz a soma de duas matrizes inteiras 3x4
!
PROGRAM somaMatriz3x4
    IMPLICIT NONE
    INTEGER :: oper1(3, 4), oper2(3, 4), mattotal(3, 4), l, c
   
    WRITE(*,*) "Programa que faz a soma de duas matrizes inteiras 3x4: "
    WRITE(*,*)
    WRITE(*,*) "Informe os dados para a primeira matriz 3x4: "
    READ(*,*) ((oper1(l, c), c = 1, 4, 1),l = 1, 3, 1)
    WRITE(*,*) "Informe os dados para a segunda matrix 3x4: "
    READ(*,*) ((oper2(l, c), c = 1, 4, 1),l = 1, 3, 1)
    ! Adição das matrizes
    DO l = 1, 3, 1
        DO c = 1, 4, 1
            mattotal(l, c) = oper1(l, c) + oper2(l, c)
        END DO
    END DO
    ! Saídas do programa
    WRITE(*,*)
    WRITE(*,*) "Apresentacao da primeira matriz 3x4: "
    DO l = 1, 3, 1
        WRITE(*, *) (oper1(l, c), c = 1, 4, 1)
    END DO
    WRITE(*,*)
    WRITE(*,*) "Apresentacao da segunda matriz 3x4: "
    DO l = 1, 3, 1
        WRITE(*, *) (oper2(l, c), c = 1, 4, 1)
    END DO
    WRITE(*,*)
    WRITE(*,*) "Apresentacao da matriz soma 3x4: "
    DO l = 1, 3, 1
        WRITE(*, *) (mattotal(l, c), c = 1, 4, 1)
    END DO
    WRITE(*,*)
    STOP
END PROGRAM somaMatriz3x4

