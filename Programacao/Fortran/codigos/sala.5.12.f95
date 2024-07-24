!
! Questão 12 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program primos
    implicit none
    integer :: numero, soma_primos = 0, soma_divisores, divisor
    
    write(*, *) "Lê vários números inteiros positivos e mostra, no final,"
    write(*, *) "a soma dos que forem primos."
    write(*, *) "O programa pára quando encontra um número negativo ou zero."
    write(*, *)
    write(*, *) "Informe um numero inteiro positivo:"
    read(*, *) numero
    do while (numero > 0)
        soma_divisores = 0
        do divisor = 2, numero - 1, 1
            if(mod(numero, divisor) == 0) then
                soma_divisores = soma_divisores + 1
            end if
        end do
        if(soma_divisores == 0) then
            soma_primos = soma_primos + numero
        end if
        write(*, *) "Informe um numero inteiro positivo:"
        read(*, *) numero
    end do
    write(*, *) "A soma dos numeros primos eh", soma_primos
    stop
end program primos

