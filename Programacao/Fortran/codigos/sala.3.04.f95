!
! Questão 04 da Lista 03 de exercícios para sala de aula - Capítulo F90/3
!
program par_ou_impar
    implicit none
    integer :: numero
    
    write(*, *) "Verifica se o numero lido é par ou impar:"
    write(*, *)
    write(*, *) "Informe um numero inteiro positivo:"
    read(*, *) numero
    if (numero - 2 * (numero / 2) == 0) then
        write(*, *) "O numero é par!"
    else
        write(*, *) "O numero é impar!"
    end if
    stop
end program par_ou_impar
