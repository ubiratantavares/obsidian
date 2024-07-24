!
! Questão 12 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program multiplica_matrizes
    implicit none
    integer :: matA(4,5), matB(5, 2), matM(4,2), i, j, k

    write(*, *) "Lê duas matrizes inteiras: uma matriz 4x5 e outra matriz 5x2."
    write(*, *) "Em seguida, calcula e mostra o produto matricial das matrizes lidas"
    write(*, *)
    write(*, *) "Informe os 20 valores para os elementos da matriz A 4x5:"
    read(*, *) ((matA(i, j), j = 1, 5, 1), i = 1, 4, 1)
    write(*, *)
    write(*, *) "Informe os 10 valores para os elementos da matriz A 5x2:"
    read(*, *) ((matB(i, j), j = 1, 2, 1), i = 1, 5, 1)
    do i  = 1, 4, 1
        do j = 1, 2, 1
            matM(i, j) = 0
            do k = 1, 5, 1
                matM(i, j) = matM(i, j) + matA(i, k) * matB(k, j)
            end do
        end do
    end do
    write(*, *)
    write(*, *) "Matriz A:"
    do i = 1, 4, 1
        write(*, *) (matA(i, j), j = 1, 5, 1)
    end do
    write(*, *)
    write(*, *) "Matriz B:"
    do i = 1, 5, 1
        write(*, *) (matB(i, j), j = 1, 2, 1)
    end do
    write(*, *)
    write(*, *) "Matriz Produto:"
    do i = 1, 4, 1
        write(*, *) (matM(i, j), j = 1, 2, 1)
    end do
    stop
end program multiplica_matrizes
