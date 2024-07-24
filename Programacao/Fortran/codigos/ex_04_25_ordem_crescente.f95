!
! Ordenar quatro valores inteiros em ordem crescente
!
program ordem_crescente
    implicit none
    integer :: primeiro, segundo, terceiro, quarto, auxiliar, vezes
    
    write(*, *) "Mostra quatro numeros lidos em ordem crescente:"
    write(*, *)
    write(*, *) "Informe os quatro numeros inteiros:"
    read(*, *) primeiro, segundo, terceiro, quarto
    do vezes = 1, 3, 1
        if (primeiro > segundo) then
            auxiliar = primeiro
            primeiro = segundo
            segundo = auxiliar
        end if
        if (segundo > terceiro) then
            auxiliar = segundo
            segundo = terceiro
            terceiro = auxiliar
        end if
        if (terceiro > quarto) then
            auxiliar = terceiro
            terceiro = quarto
            quarto = auxiliar
        end if
    end do
    write(*, *)
    write(*, *) "Dados lidos na ordem crescente:"
    write(*, *) primeiro, segundo, terceiro, quarto
    stop
end program ordem_crescente
