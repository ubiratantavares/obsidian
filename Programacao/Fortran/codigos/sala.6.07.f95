!
! Questão 07 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program menores_matriz
    implicit none
    real :: matriz_1(4, 5), matriz_2(4, 5), matriz_r(4, 5)
    integer :: i, j

    write(*, *) "Lê dados para duas matrizes reais 4x5 e mostra uma terceira matriz formada"
    write(*, *) "pelos menores elementos de mesma posição, mostrando todas as matrizes"
    write(*, *)
    write(*, *) "Informe os 20 dados para a primeira matriz: "
    read(*, *) ((matriz_1(i, j), i = 1, 4, 1), j = 1, 5, 1)
    write(*, *)
    write(*, *) "Informe os 20 dados para a segunda matriz: "
    read(*, *) ((matriz_2(i, j), i = 1, 4, 1), j = 1, 5, 1)
    do i = 1, 4, 1
        do j = 1, 5, 1
            if (matriz_1(i, j) <= matriz_2(i, j)) then
                matriz_r(i, j) = matriz_1(i, j)
            else
                matriz_r(i, j) = matriz_2(i, j)
            end if
        end do
    end do
    write(*, *)
    write(*, *) "Primeira matriz:"
    do i = 1, 4, 1
        write(*, *) (matriz_1(i, j), j = 1, 5, 1)
    end do
    write(*, *)
    write(*, *) "Segunda matriz:"
    do i = 1, 4, 1
        write(*, *) (matriz_2(i, j), j = 1, 5, 1)
    end do
    write(*, *)
    write(*, *) "Matriz resultante:"
    do i = 1, 4, 1
        write(*, *) (matriz_r(i, j), j = 1, 5, 1)
    end do
    stop
end program menores_matriz
