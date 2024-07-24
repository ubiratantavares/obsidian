!
! Questão 08 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program maior_menor
    implicit none
    integer :: matriz(6,6), i, j, m, maior, menor

    write(*, *) "Encontra o menor e o maior elemento de uma matriz real quadrada de ordem M."
    write(*, *) "M sempre menor ou igual a 6."
    write(*, *)
    write(*, *) "Informe a ordem da matriz quadrada (M): "
    read(*, *) m
    write(*, *)
    write(*, *) "Informe os", m*m, " dados para a matriz: "
    read(*, *) ((matriz(i, j), i = 1, m, 1), j = 1, m, 1)
    menor = matriz(1, 1)
    maior = matriz(1, 1)
    do i = 1, m, 1
        do j = 1, m, 1
            if (matriz(i, j) > maior) then
                maior = matriz(i, j)
            end if
            if (matriz(i, j) < menor) then
                menor = matriz(i, j)
            end if
        end do
    end do
    write(*, *)
    write(*, *) "Matriz:"
    do i = 1, m, 1
        write(*, *) (matriz(i, j), j = 1, m, 1)
    end do
    write(*, *)
    write(*, *) "Maior Valor da Matriz:", maior
    write(*, *)
    write(*, *) "Menor Valor da Matriz:", menor
    stop
end program maior_menor
