!
! Quest�o 08 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program divisivel
    implicit none
    integer :: par, numero1, numero2
    
    write(*, *) "L� 15 pares de n�meros inteiros positivos e mostra, para cada par,"
    write(*, *) " uma mensagem dizendo se o primeiro n�mero do par � divis�vel pelo"
    write(*, *) " segundo, ou n�o:"
    write(*, *)
    do par = 1, 15, 1
        write(*, *) "Informe um par de inteiros:"
        read(*, *) numero1, numero2
        if (mod(numero1, numero2) == 0) then
            write(*, *) numero1, " � divis�vel por", numero2
        else
            write(*, *) numero1, " n�o � divis�vel por", numero2
        end if
    end do
    stop
end program divisivel
