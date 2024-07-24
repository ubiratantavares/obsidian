!
! Questão 04 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program conta_ocorrencias
    implicit none
    integer :: contador(10), indice, numero

    write(*, *) "Lê vários números inteiros positivos entre 1 e 10 e conta"
    write(*, *) "as ocorrências de cada número utilizando um conjunto de 10"
    write(*, *) "elementos inteiros. Cada elemento será o contador do número"
    write(*, *) "igual ao seu índice. O Programa pára a leitura quando encontra"
    write(*, *) "um número fora da faixa aceitável e em seguida mostra a quantidade"
    write(*, *) "de ocorrência de cada número"
    do indice = 1, 10, 1
        contador(indice) = 0
    end do
    write(*, *)
    write(*, *) "Informe um número inteiro positivo entre 1 e 10: "
    read(*, *) numero
    do while (numero >= 1 .and. numero <= 10)
        contador(numero) = contador(numero) + 1
        write(*, *) "Informe um número inteiro positivo entre 1 e 10: "
        read(*, *) numero
    end do
    write(*, *)
    write(*, *) "Contagem dos numeros lidos:"
    write(*, *)
    write(*, *) "        Numero     Quantidade"
    do indice = 1, 10, 1
        write(*, *) indice, contador(indice)
    end do
    stop
end program conta_ocorrencias
