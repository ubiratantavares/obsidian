!
! Quest�o 06 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program soma_pares
    implicit none
    integer :: inteiro, numero, soma
    
    write(*, *) "L� 10 n�meros inteiros positivos e mostra a soma dos n�meros pares:"
    write(*, *)
    soma = 0
    do inteiro = 1, 10, 1
        write(*, *) "Informe um n�mero inteiro:"
        read(*, *) numero
        if (mod(numero, 2) == 0) then
            soma = soma + numero
        end if
    end do
    write(*, *) "A soma dos numeros pares =", soma
    stop
end program soma_pares
