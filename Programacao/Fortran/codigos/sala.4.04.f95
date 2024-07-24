!
! Questão 04 da Lista 04 de exercícios para sala de aula - Capítulo F90/3
!
program somatorio
    implicit none
    integer :: inteiro, x, y, soma
    
    write(*, *) "Mostra o somatório dos números inteiros entre X e Y, com X menor ou igual a Y:"
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
    write(*, *) "A soma dos inteiros da seqüencia =", soma
    stop
end program somatorio
