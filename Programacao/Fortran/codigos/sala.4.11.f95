!
! Questão 11 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program conta_divisores
    implicit none
    integer :: numero, divisor, soma = 0
    
    write(*, *) "Conta os divisores de um número inteiro positivo lido:"
    write(*, *)
    write(*, *) "Informe o valor do numero inteiro positivo:"
    read(*, *) numero
    write(*, *)
    do divisor = 1, numero, 1
        if (mod(numero, divisor) == 0) then
            soma = soma + 1
        end if
    end do
    write(*, *) "O número", numero, " possui", soma, " divisores"
    stop
end program conta_divisores
