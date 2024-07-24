!
! Questão 06 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program calcula_distancia
    implicit none
    real :: x1, y1, x2, y2, distancia
    
    write(*, *) "Calcular a distância, no plano, entre os pontos A e B:"
    write(*, *)
    write(*, *) "informe as coordenadas do ponto A(x1, y1):"
    read(*, *) x1, y1
    write(*, *) "informe as coordenadas do ponto B(x2, y2):"
    read(*, *) x2, y2
    distancia = ((x2 - x1)**2 + (y2 - y1)**2)**0.5
    write(*, *)
    write(*, *) "Distancia =", distancia
    stop
end program calcula_distancia
