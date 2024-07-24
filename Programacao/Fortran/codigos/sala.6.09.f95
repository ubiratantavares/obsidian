!
! Quest�o 09 da Lista 06 de exerc�cios para sala de aula - Cap�tulo F90/4
!
program troca_linhas
    implicit none
    integer :: matriz(5,6), i, j, m, n, aux

    write(*, *) "L� uma matriz inteira 5x6 e troca sua n-�sima linha pela sua m-�sima linha."
    write(*, *) "Os valores de m e n sempre ser�o menores ou iguas � 5. "
    write(*, *) "Mostra a matriz antes e depois da troca"
    write(*, *)
    write(*, *) "Informe os 30 dados para a matriz: "
    read(*, *) ((matriz(i, j), j = 1, 6, 1), i = 1, 5, 1)
    write(*, *)
    write(*, *) "Matriz antes da troca:"
    do i = 1, 5, 1
        write(*, *) (matriz(i, j), j = 1, 6, 1)
    end do
    write(*, *)
    write(*, *) "Informe o �ndice da primeira linha a ser trocada (M): "
    read(*, *) m
    write(*, *)
    write(*, *) "Informe o �ndice da segunda linha a ser trocada (N): "
    read(*, *) n
    do j = 1, 6, 1
        aux = matriz(m, j)
        matriz(m, j) = matriz(n, j)
        matriz(n, j) = aux
    end do
    write(*, *)
    write(*, *) "Matriz depois da troca:"
    do i = 1, 5, 1
        write(*, *) (matriz(i, j), j = 1, 6, 1)
    end do
    stop
end program troca_linhas
