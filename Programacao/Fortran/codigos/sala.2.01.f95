!
! Questão 01 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program calcula_delta
    implicit none
    integer :: a, b, c, delta
    
    write(*, *) "Calculo do Delta da equacao do segundo grau, para os coeficientes a, b e c:"
    write(*, *)
    write(*, *) "Informe os coeficientes da equação do segundo grau (a, b e c):"
    read(*, *) a, b, c 
    delta = b**2 - 4 * a * c
    write(*, *) "Delta =", delta
    stop
end program calcula_delta
