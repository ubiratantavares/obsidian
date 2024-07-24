!
! Quest�o 04 da Lista 06 de exerc�cios para sala de aula - Cap�tulo F90/4
!
program conta_ocorrencias
    implicit none
    integer :: contador(10), indice, numero

    write(*, *) "L� v�rios n�meros inteiros positivos entre 1 e 10 e conta"
    write(*, *) "as ocorr�ncias de cada n�mero utilizando um conjunto de 10"
    write(*, *) "elementos inteiros. Cada elemento ser� o contador do n�mero"
    write(*, *) "igual ao seu �ndice. O Programa p�ra a leitura quando encontra"
    write(*, *) "um n�mero fora da faixa aceit�vel e em seguida mostra a quantidade"
    write(*, *) "de ocorr�ncia de cada n�mero"
    do indice = 1, 10, 1
        contador(indice) = 0
    end do
    write(*, *)
    write(*, *) "Informe um n�mero inteiro positivo entre 1 e 10: "
    read(*, *) numero
    do while (numero >= 1 .and. numero <= 10)
        contador(numero) = contador(numero) + 1
        write(*, *) "Informe um n�mero inteiro positivo entre 1 e 10: "
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
