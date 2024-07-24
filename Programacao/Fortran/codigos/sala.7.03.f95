!
! Questão 03 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program calcula_determinante
    implicit none
    integer :: mat(3, 3), determinante

    write(*, *) "Mostra o determinante de uma matriz inteira 3x3."
    write(*, *) "Usa um sub-rotina para ler a matriz e uma função"
    write(*, *) "para o calculo do determinante."
    write(*, *)
    call leitura(mat)
    call imprime(mat)
    write(*, *)
    write(*, *) "O determinante da matriz lida e", determinante(mat)
    stop
end program calcula_determinante

subroutine imprime(matriz)
    implicit none
    integer :: matriz(3, 3), i, j
    
    write(*, *) "Matriz 3x3 lida:"
    do i = 1, 3, 1
        write(*, *) (matriz(i, j), j = 1, 3, 1)
    end do
    return
end subroutine imprime

subroutine leitura(matriz)
    implicit none
    integer :: matriz(3, 3), i, j
    
    write(*, *) "Informe os elementos inteiros da matriz 3x3:"
    read(*, *) ((matriz(i, j), j = 1, 3, 1), i = 1, 3, 1)
    return
end subroutine leitura

function determinante(a)
    implicit none
    integer :: a(3, 3), determinante

    determinante = a(1,1) * a(2,2) * a(3,3) + a(1,3) * a(2,1) * a(3,2) + a(1,2) * a(2,3) * a(3,1) - &
                 & a(1,1) * a(2,3) * a(3,2) - a(1,3) * a(2,2) * a(3,1) - a(1,2) * a(2,1) * a(3,3)
    return
end function determinante