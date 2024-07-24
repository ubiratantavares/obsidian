!
! Quest�o 02 da Lista 06 de exerc�cios para sala de aula - Cap�tulo F90/4
!
program uniao_intersecao
    implicit none
    integer :: conj1(10), conj2(10), conj_u(20), conj_i(10)
    integer :: indice1, indice2, indice_u, indice_i
    logical :: existe

    write(*, *) "L� dados inteiros para dois conjuntos de 10 elementos inteiros"
    write(*, *) "e apresente os dois conjuntos lidos e mais dois conjuntos:"
    write(*, *) "o conjunto uni�o e o conjunto interse��o."
    write(*, *)
    write(*, *) "Informe os elementos do primeiro conjunto:"
    read(*, *) (conj1(indice1), indice1 = 1, 10, 1)
    write(*, *) "Informe os elementos do segundo conjunto:"
    read(*, *) (conj2(indice2), indice2 = 1, 10, 1)
    ! Gera conjunto uni�o
    do indice1 = 1, 10, 1
        conj_u(indice1) = conj1(indice1)
    end do
    indice_u = 10
    do indice2 = 1, 10, 1
        existe = .false.
        do indice1 = 1, 10, 1
            if (conj2(indice2) == conj1(indice1)) then
                existe = .true.
            end if
        end do
        if (.not. existe) then
            indice_u = indice_u + 1
            conj_u(indice_u) = conj2(indice2)
        end if
    end do
    ! Gera conjunto interse��o
    indice_i = 0
    do indice2 = 1, 10, 1
        do indice1 = 1, 10, 1
            if (conj2(indice2) == conj1(indice1)) then
                indice_i = indice_i + 1
                conj_i(indice_i) = conj2(indice2)
            end if
        end do
    end do
    ! Apresenta��o dos conjuntos
    write(*, *) "Primeiro conjunto lido:"
    write(*, *) (conj1(indice1), indice1 = 1, 10, 1)
    write(*, *) "Segundo conjunto lido:"
    write(*, *) (conj2(indice2), indice2 = 1, 10, 1)
    write(*, *) "Conjunto uni�o:"
    write(*, *) (conj_u(indice1), indice1 = 1, indice_u, 1)
    write(*, *) "Conjunto interse��o:"
    write(*, *) (conj_i(indice2), indice2 = 1, indice_i, 1)
    stop
end program uniao_intersecao
