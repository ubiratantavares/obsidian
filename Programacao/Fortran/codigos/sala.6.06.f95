!
! Quest�o 05 da Lista 06 de exerc�cios para sala de aula - Cap�tulo F90/4
!
program ordena_conjunto
    implicit none
    integer :: conjunto(20), passo, indice, aux

    write(*, *) "L� 20 n�meros inteiros em ordem qualquer e apresenta-os em ordem crescente"
    write(*, *)
    write(*, *) "Informe 20 n�meros inteiros positivos: "
    read(*, *) (conjunto(indice), indice = 1, 20, 1)
    write(*, *) "Conjunto antes da ordena��o:"
    write(*, *) (conjunto(indice), indice = 1, 20, 1)
    ! Ordena��o do conjunto
    do passo = 1, 19, 1
        do indice = 1, 19, 1
            if (conjunto(indice) > conjunto(indice + 1)) then
                aux = conjunto(indice)
                conjunto(indice) = conjunto(indice + 1)
                conjunto(indice + 1) = aux
            end if
        end do
    end do
    write(*, *) "Conjunto depois da ordena��o:"
    write(*, *) (conjunto(indice), indice = 1, 20, 1)
    stop
end program ordena_conjunto
