!
! Quest�o 01 da Lista de exerc�cios para sala de aula - Cap�tulo F90/2
!
program calcula_delta
    implicit none
    integer :: a, b, c, delta
    
    write(*, *) "Calculo do Delta da equacao do segundo grau, para os coeficientes a, b e c:"
    write(*, *)
    write(*, *) "Informe os coeficientes da equa��o do segundo grau (a, b e c):"
    read(*, *) a, b, c 
    delta = b**2 - 4 * a * c
    write(*, *) "Delta =", delta
    stop
end program calcula_delta
