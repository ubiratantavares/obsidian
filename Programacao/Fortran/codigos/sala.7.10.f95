!
! Questão 10 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program transpoe_matriz
    implicit none
    integer :: mat(4, 5), transp(5, 4)

    write(*, *) "Utiliza uma sub-rotina que calcula a matriz transposta de uma matriz real 4x5."
    write(*, *) "O programa lê a matriz original através de uma sub-rotina. O programa também"
    write(*, *) " apresenta as matrizes original e transposta através de uma sub-rotina que"
    write(*, *) "recebe a matriz e suas dimensões"
    write(*, *)
    write(*, *) "Informe os dados para a matriz inteira 4x5:"
    call le_mat(4, 5, mat)
    write(*, *) "Matriz original lida:"
    call mostra_mat(4, 5, mat)
    call transp_mat(4, 5, mat, transp)
    write(*, *) "Matriz transposta gerada:"
    call mostra_mat(5, 4, transp)
    stop
end program transpoe_matriz

subroutine le_mat(linhas, colunas, matriz)
    integer :: linhas, colunas, matriz(linhas, colunas), i, j

    read(*, *) ((matriz(i, j), j = 1, colunas, 1), i = 1, linhas, 1)
    return
end subroutine le_mat

subroutine mostra_mat(linhas, colunas, matriz)
    integer :: linhas, colunas, matriz(linhas, colunas), i, j

    do i = 1, linhas, 1
    write(*, *) (matriz(i, j), j = 1, colunas, 1)
    end do
    return
end subroutine mostra_mat

subroutine transp_mat(linhas, colunas, matriz, transposta)
    integer :: linhas, colunas, matriz(linhas, colunas), transposta(colunas, linhas), i, j

    do i = 1, linhas, 1
        do j = 1, colunas, 1
            transposta(j, i) = matriz(i, j)
        end do
    end do
    return
end subroutine transp_mat

