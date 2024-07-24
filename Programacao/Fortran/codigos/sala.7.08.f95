!
! Questão 08 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program ordena_conjunto
    implicit none
    integer :: conjunto(50), n

    write(*, *) "Recebe uma lista de N nomes e os mostra em ordem crescente."
    write(*, *) "O programa usa uma sub-rotina para a ordenação dos nomes."
    write(*, *) "Assume que N será sempre menor ou igual a 50."
    write(*, *)
    write(*, *) "Informe o valor de N:"
    read(*, *) n
    write(*, *) "Informe os", n, " valores para o conjunto:"
    call le_conj(n, conjunto)
    write(*, *) "Conjunto na ordem original:"
    call mostra_conj(n, conjunto)
    call ordena_conj(n, conjunto)
    write(*, *) "Conjunto na ordenado em ordem crescente:"
    call mostra_conj(n, conjunto)
    stop
end program ordena_conjunto

subroutine le_conj(tamanho, conj)
    integer :: tamanho, conj(tamanho), indice

    read(*, *) (conj(indice), indice = 1, tamanho, 1)
    return
end subroutine le_conj

subroutine mostra_conj(tamanho, conj)
    integer :: tamanho, conj(tamanho), indice

    write(*, *) (conj(indice), indice = 1, tamanho, 1)
    return
end subroutine mostra_conj

subroutine ordena_conj(tamanho, conj)
    integer :: tamanho, conj(tamanho), passada, indice, aux

    do passada = 1, tamanho - 1, 1
        do indice = 1, tamanho - 1, 1
            if (conj(indice) > conj(indice + 1)) then
                aux = conj(indice)
                conj(indice) = conj(indice + 1)
                conj(indice + 1) = aux
            end if
        end do
    end do
    return
end subroutine ordena_conj

