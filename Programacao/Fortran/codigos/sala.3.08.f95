!
! Questão 08 da Lista 03 de exercícios para sala de aula - Capítulo F90/3
!
program triangulo_retangulo
    implicit none
    integer :: a, b, c
    
    write(*, *) "Mostra se tres retas poderao formar um triangulo retangulo:"
    write(*, *)
    write(*, *) "Informe os comprimentos das tres retas:"
    read(*, *) a, b, c
    if (a**2 + b**2 == c**2 .or. a**2 + c**2 == b**2 .or. b**2 + c**2 == a**2) then
        write(*, *) "As retas podem formar um triangulo retangulo!"
    else
        write(*, *) "As retas nao podem formar um triangulo retangulo!"
    end if
    stop
end program triangulo_retangulo
