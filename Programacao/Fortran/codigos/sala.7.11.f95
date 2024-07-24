!
! Questão 11 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program inverte_conjunto
    implicit none
    integer :: conjunto(20), inverso(20)

    write(*, *) "Lê 20 valores para um conjunto e os mostra na ordem de armazenamento"
    write(*, *) "e também na ordem inversa. A inversão dos dados no conjunto será"
    write(*, *) "feita por uma sub-rotina."
    write(*, *)
    write(*, *) "Informe os 20 valores para o conjunto:"
    call le_conj(20, conjunto)
    write(*, *) "Conjunto na ordem original:"
    call mostra_conj(20, conjunto)
    call inverte_conj(20, conjunto, inverso)
    write(*, *) "Conjunto na ordem inversa:"
    call mostra_conj(20, inverso)
    stop
end program inverte_conjunto

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

subroutine inverte_conj(tamanho, conj, inverso)
    integer :: tamanho, conj(tamanho), inverso(tamanho), indice

    do indice = 1, tamanho, 1
        inverso(tamanho + 1 - indice) = conj(indice)
    end do
    return
end subroutine inverte_conj

