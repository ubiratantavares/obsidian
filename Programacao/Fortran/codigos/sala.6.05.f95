!
! Questão 05 da Lista 06 de exercícios para sala de aula - Capítulo F90/4
!
program insere_no_conjunto
    implicit none
    integer :: conjunto(21), indice1, indice2, numero, indicef, anterior

    write(*, *) "Lê vários inteiros positivos em ordem crescente, no máximo 20,"
    write(*, *) "e os armazene num conjunto. O programa pára a leitura quando"
    write(*, *) "encontra um número fora de ordem ou o vigésimo número. Em seguida,"
    write(*, *) "o programa lê mais um número inteiro qualquer e o insere na devida ordem."
    write(*, *) "Apresente o conjunto antes e depois da inserção"
    write(*, *)
    write(*, *) "Informe um número inteiro positivo: "
    read(*, *) numero
    indicef = 1
    conjunto(indicef) = numero
    anterior = numero
    write(*, *) "Informe um número inteiro positivo: "
    read(*, *) numero
    do while (numero > anterior .and. indicef <= 20)
        indicef = indicef + 1
        conjunto(indicef) = numero
        anterior = numero
        write(*, *) "Informe um número inteiro positivo: "
        read(*, *) numero
    end do
    write(*, *) "Informe um número inteiro positivo para inserção no conjunto: "
    read(*, *) numero
    write(*, *)
    write(*, *) "Conjunto antes da inserção:"
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
    write(*, *) "Conjunto após a inserção:"
    write(*, *) (conjunto(indice1), indice1 = 1, indicef, 1)
    stop
end program insere_no_conjunto
