!
! Questão 06 da Lista 03 de exercícios para sala de aula - Capítulo F90/3
!
program ordem_crescente
    implicit none
    integer :: primeiro, segundo, terceiro, quarto, auxiliar
    
    write(*, *) "Mostra quatro numeros lidos em ordem crescente:"
    write(*, *)
    write(*, *) "Informe os quatro numeros inteiros:"
    read(*, *) primeiro, segundo, terceiro, quarto
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
    if (primeiro > segundo) then
        auxiliar = primeiro
        primeiro = segundo
        segundo = auxiliar
    end if
    write(*, *)
    write(*, *) "Dados lidos na ordem crescente:"
    write(*, *) primeiro, segundo, terceiro, quarto
    stop
end program ordem_crescente
