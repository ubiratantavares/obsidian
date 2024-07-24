!
! Questão 02 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program soma_par_impar
    implicit none
    integer :: inteiro, soma_par = 0, soma_impar = 0
    
    write(*, *) "Lê vários inteiros positivos e mostra, no final, a soma dos números pares e "
    write(*, *) "a soma dos números ímpares."
    write(*, *) "O programa para quando entra um número maior que 1000."
    write(*, *)
    write(*, *) "Informe um número inteiro positivo:"
    read(*, *) inteiro
    do while (inteiro <= 1000)
        if (mod(inteiro, 2) == 0) then
            soma_par = soma_par + inteiro
        else
            soma_impar = soma_impar + inteiro
        end if
        write(*, *) "Informe um número inteiro positivo:"
        read(*, *) inteiro
    end do
    write(*, *)
    write(*, *) "Soma dos pares =", soma_par
    write(*, *) "Soma dos impares =", soma_impar
    stop
end program soma_par_impar

