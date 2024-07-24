!
! Programa para calcular quantos tijolos serão necessários para construir as paredes
! de um galpão com as seguinte características:
!       Comprimento = 20m
!       Largura     = 10m
!       Altura      =  8m
!       5 janelas de 2m x 1,5m
!       1 porta de 4m x 2,5m
!       32 tijolos/m2
!
PROGRAM tijolos

    ! Apresentação da finalidade do programa
    WRITE (*, *) "Serão necessários ",& ! este comando será continuado na próxima linha
                 & (2 * 20 * 8 + 2 * 10 * 8 - 5 * 2 * 1.5 - 4 * 2.5) * 32.0,& ! linha de continuaçao
                 & " tijolos."                                                ! linha de continuaçao
    STOP
END PROGRAM tijolos