!
! Programa que ler uma matriz inteiroa, por linhas, com DO implicito e a mostra
! no formato padr�o
!
PROGRAM lemostra_matriz
    IMPLICIT NONE
    INTEGER :: matint(3, 4), l, c

    WRITE(*, *) "Le e mostra uma matriz: "
    WRITE(*, *)
    WRITE(*, *) "Informe os 12 elementos inteiros da matriz: "
    ! Leitura com DO implicito
    READ(*, *) ((matint(l, c), c = 1, 4, 1), l = 1, 3, 1)
    WRITE(*, *) "Apresenta�ao da matriz: "
    ! Apresenta��o no formato padr�o
    DO l = 1, 3, 1
        WRITE(*, *) (matint(l, c), c = 1, 4, 1)
    END DO
    STOP
END PROGRAM lemostra_matriz
   