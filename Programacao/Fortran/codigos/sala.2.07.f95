!
! Questão 07 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program area_triangulo
    implicit none
    real :: base, altura, area
    
    write(*, *) "Calcular a área de um triângulo de base e altura quaisquer:"
    write(*, *)
    write(*, *) "Informe, em centimetros, os valores da base e da altura:"
    read(*, *) base, altura
    area = base * altura / 2.
    write(*, *)
    write(*, *) "Area do triangulo =", area, " centimetros quadrados"
    stop
end program area_triangulo
