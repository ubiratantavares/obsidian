!
! Questão 02 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program esta_presente
    implicit none
    integer :: conjunto(20), chave, resultado, pesquisa

    write(*, *) "Lê um conjunto inteiro de 20 elementos e um valor para ser pesquisado neste"
    write(*, *) "conjunto. Informa se o valor pesquisado está presente ou não no conjunto."
    write(*, *) "Uutiliza uma sub-rotina para ler o conjunto e utiliza uma função para fazer"
    write(*, *) "a pesquisa. A função quando encontra o valor procurado, retorna a posição"
    write(*, *) "do valor no conjunto e retorna 0, caso o valor não seja encontrado."
    write(*, *)
    call leitura(conjunto, 20)
    write(*, *)
    write(*, *) "Informe o valor a ser pesquisado no conjunto:"
    read(*, *) chave
    write(*, *)
    resultado = pesquisa(conjunto, 20, chave)
    if (resultado == 0) then
        write(*, *) "O valor procurado não se encontra no conjunto"
    else
        write(*, *) "O valor procurado encontra-se na posicao", resultado, " do conjunto"
    end if
    stop
end program esta_presente

subroutine leitura(conj, tamanho)
    implicit none
    integer :: tamanho, conj(tamanho), posicao
    
    write(*, *) "Informe um conjunto de", tamanho, " elementos inteiros:"
    read(*, *) (conj(posicao), posicao = 1, tamanho, 1)
    return
end subroutine leitura

function pesquisa(conj, tamanho, numero)
    implicit none
    integer :: tamanho, conj(tamanho), indice, numero, pesquisa

    do indice = 1, tamanho, 1
        if (conj(indice) == numero) then
            pesquisa = indice
            return
        end if
    end do
    pesquisa = 0
    return
end function pesquisa