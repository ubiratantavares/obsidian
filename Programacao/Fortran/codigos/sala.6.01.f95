!
! Questão 01 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program soma_conjuntos
    implicit none
    integer :: conj1(10), conj2(10), conj3(10), indice
    
    write(*, *) "Lê dados para dois conjuntos inteiros de 10 elementos e"
    write(*, *) "cria um terceiro conjunto em que cada elemento seja preenchido"
    write(*, *) "com a soma dos elementos lidos de mesma posição."
    write(*, *)
    write(*, *) "Informe os elementos do primeiro conjunto:"
    read(*, *) (conj1(indice), indice = 1, 10, 1)
    write(*, *) "Informe os elementos do segundo conjunto:"
    read(*, *) (conj2(indice), indice = 1, 10, 1)
    do indice = 1, 10, 1
        conj3(indice) = conj1(indice) + conj2(indice)
    end do
    write(*, *) "Primeiro conjunto lido:"
    write(*, *) (conj1(indice), indice = 1, 10, 1)
    write(*, *) "Segundo conjunto lido:"
    write(*, *) (conj2(indice), indice = 1, 10, 1)
    write(*, *) "Conjunto resultante:"
    write(*, *) (conj3(indice), indice = 1, 10, 1)
    stop
end program soma_conjuntos
