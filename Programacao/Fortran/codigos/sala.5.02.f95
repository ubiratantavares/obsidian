!
! Quest�o 02 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program soma_par_impar
    implicit none
    integer :: inteiro, soma_par = 0, soma_impar = 0
    
    write(*, *) "L� v�rios inteiros positivos e mostra, no final, a soma dos n�meros pares e "
    write(*, *) "a soma dos n�meros �mpares."
    write(*, *) "O programa para quando entra um n�mero maior que 1000."
    write(*, *)
    write(*, *) "Informe um n�mero inteiro positivo:"
    read(*, *) inteiro
    do while (inteiro <= 1000)
        if (mod(inteiro, 2) == 0) then
            soma_par = soma_par + inteiro
        else
            soma_impar = soma_impar + inteiro
        end if
        write(*, *) "Informe um n�mero inteiro positivo:"
        read(*, *) inteiro
    end do
    write(*, *)
    write(*, *) "Soma dos pares =", soma_par
    write(*, *) "Soma dos impares =", soma_impar
    stop
end program soma_par_impar

