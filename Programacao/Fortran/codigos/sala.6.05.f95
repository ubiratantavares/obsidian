!
! Quest�o 05 da Lista 06 de exerc�cios para sala de aula - Cap�tulo F90/4
!
program insere_no_conjunto
    implicit none
    integer :: conjunto(21), indice1, indice2, numero, indicef, anterior

    write(*, *) "L� v�rios inteiros positivos em ordem crescente, no m�ximo 20,"
    write(*, *) "e os armazene num conjunto. O programa p�ra a leitura quando"
    write(*, *) "encontra um n�mero fora de ordem ou o vig�simo n�mero. Em seguida,"
    write(*, *) "o programa l� mais um n�mero inteiro qualquer e o insere na devida ordem."
    write(*, *) "Apresente o conjunto antes e depois da inser��o"
    write(*, *)
    write(*, *) "Informe um n�mero inteiro positivo: "
    read(*, *) numero
    indicef = 1
    conjunto(indicef) = numero
    anterior = numero
    write(*, *) "Informe um n�mero inteiro positivo: "
    read(*, *) numero
    do while (numero > anterior .and. indicef <= 20)
        indicef = indicef + 1
        conjunto(indicef) = numero
        anterior = numero
        write(*, *) "Informe um n�mero inteiro positivo: "
        read(*, *) numero
    end do
    write(*, *) "Informe um n�mero inteiro positivo para inser��o no conjunto: "
    read(*, *) numero
    write(*, *)
    write(*, *) "Conjunto antes da inser��o:"
    write(*, *) (conjunto(indice1), indice1 = 1, indicef, 1)
    indice1 = 1
    do while(indice1 <= 20 .and. indice1 <= indicef .and. numero > conjunto(indice1))
        indice1 = indice1 + 1
    end do
    do indice2 = indicef, indice1, -1
        conjunto(indice2 + 1) = conjunto(indice2)
    end do
    conjunto(indice1) = numero
    indicef = indicef + 1
    write(*, *)
    write(*, *) "Conjunto ap�s a inser��o:"
    write(*, *) (conjunto(indice1), indice1 = 1, indicef, 1)
    stop
end program insere_no_conjunto
