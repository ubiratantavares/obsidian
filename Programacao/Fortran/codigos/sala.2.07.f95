!
! Quest�o 07 da Lista de exerc�cios para sala de aula - Cap�tulo F90/2
!
program area_triangulo
    implicit none
    real :: base, altura, area
    
    write(*, *) "Calcular a �rea de um tri�ngulo de base e altura quaisquer:"
    write(*, *)
    write(*, *) "Informe, em centimetros, os valores da base e da altura:"
    read(*, *) base, altura
    area = base * altura / 2.
    write(*, *)
    write(*, *) "Area do triangulo =", area, " centimetros quadrados"
    stop
end program area_triangulo
