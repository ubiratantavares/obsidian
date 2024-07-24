!
! Programa para calcular a dist�ncia entre dois pontos no plano
!
PROGRAM distanciaEntrePontos
    IMPLICIT NONE
    REAL :: x1, y1, x2, y2, distancia
   
    ! Apresenta��o da finalidade do programa
    WRITE (*,*) "Calculo da distancia entre dois pontos no plano:"
    WRITE (*,*)
    ! Leitura das coordenadas dos pontos no plano
    WRITE (*,*) "Informe as coordenadas do primeiro ponto (x1 e y1): "
    READ (*,*) x1, y1
    WRITE (*,*) "Informe as coordenadas do segundo ponto (x2 e y2): "
    READ (*,*) x2, y2
    ! C�lculo da distancia
    distancia = SQRT((x2 - x1) ** 2 + (y2 - y1) ** 2)
    ! Sa�da do programa
    WRITE (*,*) "Coordenadas do primeiro ponto: x1 = ", x1, " e y1 = ", y1
    WRITE (*,*) "Coordenadas do primeiro ponto: x2 = ", x2, " e y2 = ", y2
    WRITE (*,*)
    WRITE (*,*) "A dist�ncia entre os pontos = ", distancia
    STOP
END PROGRAM distanciaEntrePontos

   