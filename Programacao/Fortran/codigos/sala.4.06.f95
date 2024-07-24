!
! Questão 06 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program soma_pares
    implicit none
    integer :: inteiro, numero, soma
    
    write(*, *) "Lê 10 números inteiros positivos e mostra a soma dos números pares:"
    write(*, *)
    soma = 0
    do inteiro = 1, 10, 1
        write(*, *) "Informe um número inteiro:"
        read(*, *) numero
        if (mod(numero, 2) == 0) then
            soma = soma + numero
        end if
    end do
    write(*, *) "A soma dos numeros pares =", soma
    stop
end program soma_pares
