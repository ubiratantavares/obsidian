!
! Quest�o 03 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program soma_produto_media
    implicit none
    real :: val1, val2, val3, soma, produto, media
    
    write(*, *) "L� v�rios conjuntos de tr�s valores reais e mostra para cada conjunto:"
    write(*, *) "sua soma, seu produto e sua m�dia."
    write(*, *) "O programa para quando um conjunto n�o entrar com seus valores em ordem crescente."
    write(*, *)
    write(*, *) "Informe tr�s numeros reais em ordem crescente:"
    read(*, *) val1, val2, val3
    do while (val1 < val2 .and. val2 < val3)
        soma = val1 + val2 + val3
        produto = val1 * val2 * val3
        media = soma / 3
        write(*, *) "Soma =", soma
        write(*, *) "Produto =", produto
        write(*, *) "Media =", media
        write(*, *)
        write(*, *) "Informe tr�s numeros reais em ordem crescente:"
        read(*, *) val1, val2, val3
    end do
    stop
end program soma_produto_media

