!
! Quest�o 03 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program inteiros_entre_x_e_y
    implicit none
    integer :: inteiro, x, y
    
    write(*, *) "Mostra os n�meros inteiros entre X e Y, inclusive, com X menor ou igual a Y:"
    write(*, *)
    write(*, *) "Informe o valor de X:"
    read(*, *) x
    write(*, *) "Informe o valor de Y:"
    read(*, *) y
    write(*, *)
    do inteiro = x, y, 1
        write(*, *) inteiro
    end do
    stop
end program inteiros_entre_x_e_y
