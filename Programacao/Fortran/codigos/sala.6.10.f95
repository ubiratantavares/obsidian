!
! Questão 10 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program gera_matriz
    implicit none
    integer :: matriz(6,6), i, j

    write(*, *) "Cria uma matriz quadrada de ordem igual à 6, com os elementos da diagonal principal"
    write(*, *) "iguais a zero, os elementos acima da diagonal principal iguais a 1 e os elementos"
    write(*, *) "abaixo da diagonal principal iguais a -1. Mostra a matriz gerada"
    write(*, *)
    do i  = 1, 6, 1
        do j = 1, 6, 1
            if (i < j) then
                matriz(i, j) = 1
            else if( i == j) then
                matriz(i, j) = 0
            else
                matriz(i, j) = -1
            end if
        end do
    end do
    write(*, *)
    write(*, *) "Matriz gerada:"
    do i = 1, 6, 1
        write(*, *) (matriz(i, j), j = 1, 6, 1)
    end do
    stop
end program gera_matriz
