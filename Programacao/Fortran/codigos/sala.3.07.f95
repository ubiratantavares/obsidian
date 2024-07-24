!
! Questão 07 da Lista 03 de exercícios para sala de aula - Capítulo F90/3
!
program tipo_triangulo
    implicit none
    integer :: a, b, c
    
    write(*, *) "Mostra se tres retas poderao formar um triangulo e qual o seu tipo:"
    write(*, *)
    write(*, *) "Informe os comprimentos das tres retas:"
    read(*, *) a, b, c
    if (a + b > c .and. a + c > b .and. b + c > a) then
        if (a == b .and. b == c) then
            write(*, *) "As retas podem formar um triangulo equilatero!"
        else if (a == b .or. b == c .or. c == a) then
            write(*, *) "As retas podem formar um triangulo isosceles!"
        else
            write(*, *) "As retas podem formar um triangulo escaleno!"
        end if
    else
        write(*, *) "As retas nao podem formar um triangulo!"
    end if
    stop
end program tipo_triangulo
