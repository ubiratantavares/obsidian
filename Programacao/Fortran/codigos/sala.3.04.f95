!
! Quest�o 04 da Lista 03 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program par_ou_impar
    implicit none
    integer :: numero
    
    write(*, *) "Verifica se o numero lido � par ou impar:"
    write(*, *)
    write(*, *) "Informe um numero inteiro positivo:"
    read(*, *) numero
    if (numero - 2 * (numero / 2) == 0) then
        write(*, *) "O numero � par!"
    else
        write(*, *) "O numero � impar!"
    end if
    stop
end program par_ou_impar
