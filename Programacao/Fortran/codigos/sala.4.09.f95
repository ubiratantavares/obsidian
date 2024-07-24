!
! Questão 09 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program conta_divisiveis
    implicit none
    integer :: n, d, vezes, numero, soma
    
    write(*, *) "Lê N números e mostra quantos são divisíveis pelo número d:"
    write(*, *)
    write(*, *) "Informe o valor de N:"
    read(*, *) n
    write(*, *) "Informe o valor de d:"
    read(*, *) d
    write(*, *)
    soma = 0
    do vezes = 1, n, 1
        write(*, *) "Informe um número inteiro:"
        read(*, *) numero
        if (mod(numero, d) == 0) then
            soma = soma + 1
        end if
    end do
    write(*, *)
    write(*, *) "Ocorreram", soma, " números divisíveis por", d
    stop
end program conta_divisiveis
