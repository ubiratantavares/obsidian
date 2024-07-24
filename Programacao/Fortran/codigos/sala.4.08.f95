!
! Questão 08 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program divisivel
    implicit none
    integer :: par, numero1, numero2
    
    write(*, *) "Lê 15 pares de números inteiros positivos e mostra, para cada par,"
    write(*, *) " uma mensagem dizendo se o primeiro número do par é divisível pelo"
    write(*, *) " segundo, ou não:"
    write(*, *)
    do par = 1, 15, 1
        write(*, *) "Informe um par de inteiros:"
        read(*, *) numero1, numero2
        if (mod(numero1, numero2) == 0) then
            write(*, *) numero1, " é divisível por", numero2
        else
            write(*, *) numero1, " não é divisível por", numero2
        end if
    end do
    stop
end program divisivel
