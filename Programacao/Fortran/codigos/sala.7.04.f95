!
! Quest�o 04 da Lista 07 de exerc�cios para sala de aula - Cap�tulo F90/5
!
program calcula_senos
    implicit none
    integer :: N, angulo 
    real :: radianos, seno

    write(*, *) "Mostrar o seno de N �ngulos em radianos. O seno ser� calculado por uma fun��o"
    write(*, *) "que utiliza os 5 primeiros termos da s�rie:"
    write(*, *) "                3      5      7      9"
    write(*, *) "               x      x      x      x"
    write(*, *) "seno(x) = x - ---- + ---- - ---- + ----"
    write(*, *) "               3!     5!     7!     9!"
    write(*, *)
    write(*, *) "Informe o numero de angulos para calculo do seno:"
    read(*, *) N
    write(*, *)
    do angulo = 1, N, 1
        write(*, *) "Informe o valor de um angulo em radianos para calculo do seno:"
        read(*, *) radianos
        write(*, *)
        write(*, *) "o seno do angulo", radianos, " radianos e ", seno(radianos)
        write(*, *)
    end do
    stop
end program calcula_senos

function seno(x)
    implicit none
    real :: x, seno
    integer :: fatorial

    seno = x - x**3/fatorial(3) + x**5/fatorial(5) - x**7/fatorial(7) + x**9/fatorial(9)
    return
end function seno

function fatorial(n)
    integer :: fatorial, n, fator

    fatorial = 1
    do fator = 1, n, 1
       fatorial = fatorial * fator
    end do
    return
end function fatorial