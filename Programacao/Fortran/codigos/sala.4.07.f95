!
! Questão 07 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program conta_pares
    implicit none
    integer :: inteiro, numero, soma, n
    
    write(*, *) "Lê N inteiros positivos e mostra quantos números pares ocorreram:"
    write(*, *)
    write(*, *) "Quantos números serão lidos (N)?:"
    read(*, *) n
    soma = 0
    do inteiro = 1, n, 1
        write(*, *) "Informe um número inteiro:"
        read(*, *) numero
        if (mod(numero, 2) == 0) then
            soma = soma + 1
        end if
    end do
    write(*, *) "A quantidade de números pares é", soma
    stop
end program conta_pares
