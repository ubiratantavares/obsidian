!
! Questão 11 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program localiza_posicao
    implicit none
    integer :: matriz(4,5), l, c, n

    write(*, *) "Lê dados para uma matriz inteira 4x5 e mostra em que "
    write(*, *) "posições estão armazenados os valores iguais a N"
    write(*, *)
    write(*, *) "Informe os 20 valores para os elementos da matriz:"
    read(*, *) ((matriz(l, c), c = 1, 5, 1), l = 1, 4, 1)
    write(*, *)
    write(*, *) "Informe o valor do número N para pesquisa:"
    read(*, *) n
    write(*, *)
    write(*, *) "Matriz lida:"
    do l = 1, 4, 1
        write(*, *) (matriz(l, c), c = 1, 5, 1)
    end do
    do l  = 1, 4, 1
        do c = 1, 5, 1
            if (matriz(l, c) == n) then
                write(*, *) "Encontrei ", n, "      na linha =", l, "      coluna =", c
            end if
        end do
    end do
    stop
end program localiza_posicao
