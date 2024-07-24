!
! Programa para calcular quantos tijolos ser�o necess�rios para construir as paredes
! de um galp�o com as seguinte caracter�sticas:
!       Comprimento = 20m
!       Largura     = 10m
!       Altura      =  8m
!       5 janelas de 2m x 1,5m
!       1 porta de 4m x 2,5m
!       32 tijolos/m2
!
PROGRAM tijolos

    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Ser�o necess�rios ",& ! este comando ser� continuado na pr�xima linha
                 & (2 * 20 * 8 + 2 * 10 * 8 - 5 * 2 * 1.5 - 4 * 2.5) * 32.0,& ! linha de continua�ao
                 & " tijolos."                                                ! linha de continua�ao
    STOP
END PROGRAM tijolos