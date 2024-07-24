!
! Questão 10 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program mostra_divisores
    implicit none
    integer :: numero, divisor
    
    write(*, *) "Mostra os divisores de um número inteiro positivo lido:"
    write(*, *)
    write(*, *) "Informe o valor do numero inteiro positivo:"
    read(*, *) numero
    write(*, *)
    write(*, *) "Divisores de", numero, ":"
    write(*, *)
    do divisor = 1, numero, 1
        if (mod(numero, divisor) == 0) then
            write(*, *) divisor
        end if
    end do
    stop
end program mostra_divisores
