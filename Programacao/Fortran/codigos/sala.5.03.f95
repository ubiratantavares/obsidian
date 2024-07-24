!
! Questão 03 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program soma_produto_media
    implicit none
    real :: val1, val2, val3, soma, produto, media
    
    write(*, *) "Lê vários conjuntos de três valores reais e mostra para cada conjunto:"
    write(*, *) "sua soma, seu produto e sua média."
    write(*, *) "O programa para quando um conjunto não entrar com seus valores em ordem crescente."
    write(*, *)
    write(*, *) "Informe três numeros reais em ordem crescente:"
    read(*, *) val1, val2, val3
    do while (val1 < val2 .and. val2 < val3)
        soma = val1 + val2 + val3
        produto = val1 * val2 * val3
        media = soma / 3
        write(*, *) "Soma =", soma
        write(*, *) "Produto =", produto
        write(*, *) "Media =", media
        write(*, *)
        write(*, *) "Informe três numeros reais em ordem crescente:"
        read(*, *) val1, val2, val3
    end do
    stop
end program soma_produto_media

