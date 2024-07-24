!
! Questão 03 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program substitui_elementos
    implicit none
    integer :: conjunto(20), indice

    write(*, *) "Lê números inteiros positivos para um conjunto de 20 elementos e,"
    write(*, *) "se o último elemento for par, substitui todos os números pares"
    write(*, *) "por zero caso contrário, substitui todos os ímpares por -1."
    write(*, *) "O programa imprime o conjunto antes e depois das substituições."
    write(*, *)
    write(*, *) "Informe os 20 elementos do conjunto:"
    read(*, *) (conjunto(indice), indice = 1, 20, 1)
    write(*, *)
    write(*, *) "Conjunto original:"
    write(*, *) (conjunto(indice), indice = 1, 20, 1)
    if (mod(conjunto(20), 2) == 0) then
        do indice = 1, 20, 1
            if (mod(conjunto(indice), 2) == 0) then
                conjunto(indice) = 0
            end if
        end do
    else
        do indice = 1, 20, 1
            if (mod(conjunto(indice), 2) /= 0) then
                conjunto(indice) = -1
            end if
        end do
    end if
    write(*, *)
    write(*, *) "Conjunto após as substituições:"
    write(*, *) (conjunto(indice), indice = 1, 20, 1)
    stop
end program substitui_elementos
