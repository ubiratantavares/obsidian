!
! Quest�o 05 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program multiplicacao
    implicit none
    integer :: inteiro, m, n, produto
    
    write(*, *) "Mostra o produto dos inteiros entre M e N, inclusive, com M menor ou igual a N:"
    write(*, *)
    write(*, *) "Informe o valor de M:"
    read(*, *) m
    write(*, *) "Informe o valor de N:"
    read(*, *) n
    write(*, *)
    produto = 1
    do inteiro = m, n, 1
        produto = produto * inteiro
    end do
    write(*, *) "O produto dos inteiros da seq�encia =", produto
    stop
end program multiplicacao
