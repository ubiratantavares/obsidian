!
! Quest�o 04 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program somatorio
    implicit none
    integer :: inteiro, x, y, soma
    
    write(*, *) "Mostra o somat�rio dos n�meros inteiros entre X e Y, com X menor ou igual a Y:"
    write(*, *)
    write(*, *) "Informe o valor de X:"
    read(*, *) x
    write(*, *) "Informe o valor de Y:"
    read(*, *) y
    write(*, *)
    soma = 0
    do inteiro = x + 1, y - 1, 1
        soma = soma + inteiro
    end do
    write(*, *) "A soma dos inteiros da seq�encia =", soma
    stop
end program somatorio
