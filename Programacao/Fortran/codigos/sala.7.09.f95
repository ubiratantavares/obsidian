!
! Questão 10 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program transpoe_matriz
    implicit none
    integer :: mat(6, 6), maior, menor

    write(*, *) "Lê uma matriz inteira 6x6 e mostra o maior e o menor valores da matriz."
    write(*, *) "O programa utiliza uma sub-rotina que encontra o menor e o maior valor da matriz."
    write(*, *)
    write(*, *) "Informe os dados para a matriz inteira 6x6:"
    call le_mat(mat)
    write(*, *) "Matriz 6x6 lida:"
    call mostra_mat(mat)
    call mai_men_mat(mat, maior, menor)
    write(*, *)
    write(*, *) "Maior elemento da matriz:", maior
    write(*, *) "Menor elemento da matriz:", menor
    stop
end program transpoe_matriz

subroutine le_mat(matriz)
    integer :: matriz(6, 6), i, j

    read(*, *) ((matriz(i, j), j = 1, 6, 1), i = 1, 6, 1)
    return
end subroutine le_mat

subroutine mostra_mat(matriz)
    integer :: matriz(6, 6), i, j

    do i = 1, 6, 1
        write(*, *) (matriz(i, j), j = 1, 6, 1)
    end do
    return
end subroutine mostra_mat

subroutine mai_men_mat(matriz, mai, men)
    integer :: matriz(6, 6), mai, men, i, j

    mai = matriz(1, 1)
    men = matriz(1, 1)
    do i = 1, 6, 1
        do j = 1, 6, 1
            if (matriz(i, j) > mai) then
                mai = matriz(i, j)
            end if
            if (matriz(i, j) < men) then
                men = matriz(i, j)
            end if
        end do
    end do
    return
end subroutine mai_men_mat

