!
! Questão 10 da Lista de exercícios para sala de aula - Capítulo F90/1
!
program distancia
    write(*, *) "Calcular a distância, no plano, entre os pontos A(5,8) e B(-5, 0):"
    write(*, *)
    write(*, *) "Distancia =", ((-5 - 5)**2 + (0 - 8)**2)**0.5
    stop
end program distancia
