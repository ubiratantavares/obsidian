!
! Questão 06 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program escreve_extenso
    implicit none
    integer :: numero
    character (len = 50) :: extenso

    write(*, *) "Lê um número inteiro entre 0 e 999 e apresenta-o por extenso."
    write(*, *) "Usa uma função que recebe o inteiro e retorna seu valor por extenso."
    write(*, *)
    write(*, *) "Informe um numero inteiro entre 0 e 999:"
    read(*, *) numero
    do while (numero >= 0)
        write(*, *)
        write(*, *) "O valor extenso do numero lido eh ", extenso(numero)
        write(*, *) "Informe um numero inteiro entre 0 e 999:"
        read(*, *) numero
    end do
    stop
end program escreve_extenso

function extenso(numero)
    implicit none
    integer :: numero, unidade, dezena, centena, dezena_unidade
    character(len = 12) :: unidades(19), dezenas(9), centenas(9)
    character (len = 50) :: extenso

    unidades(1) = "um"
    unidades(2) = "dois"
    unidades(3) = "treis"
    unidades(4) = "quatro"
    unidades(5) = "cinco"
    unidades(6) = "seis"
    unidades(7) = "sete"
    unidades(8) = "oito"
    unidades(9) = "nove"
    unidades(10) = "dez"
    unidades(11) = "onze"
    unidades(12) = "doze"
    unidades(13) = "treze"
    unidades(14) = "quatorze"
    unidades(15) = "quinze"
    unidades(16) = "dezesseis"
    unidades(17) = "dezessete"
    unidades(18) = "dezoito"
    unidades(19) = "dezenove"
    
    dezenas(1) = "dez"
    dezenas(2) = "vinte"
    dezenas(3) = "trinta"
    dezenas(4) = "quarenta"
    dezenas(5) = "cinquenta"
    dezenas(6) = "sessenta"
    dezenas(7) = "setenta"
    dezenas(8) = "oitenta"
    dezenas(9) = "noventa"
    
    centenas(1) = "cento"
    centenas(2) = "duzentos"
    centenas(3) = "trezentos"
    centenas(4) = "quatrocentos"
    centenas(5) = "quinhentos"
    centenas(6) = "seiscentos"
    centenas(7) = "setecentos"
    centenas(8) = "oitocentos"
    centenas(9) = "novecentos"

    centena = numero / 100
    dezena_unidade = mod(numero, 100)
    dezena = dezena_unidade / 10
    unidade = mod(dezena_unidade, 10)

    if (numero == 0) then
        extenso = "zero"
    else if (numero < 20) then
        extenso = trim(unidades(numero))
    else if ( numero == 100) then
        extenso = "cem"
    else if (centena /= 0 .and. dezena_unidade > 0 .and. dezena_unidade < 20) then
        extenso = trim(centenas(centena)) // " e " // trim(unidades(dezena_unidade))
        return
    else if (unidade == 0 .and. dezena == 0) then
        extenso = trim(centenas(centena))
    else if (centena == 0 .and. unidade == 0) then
        extenso = trim(dezenas(dezena))
    else if (centena == 0) then
        extenso = trim(dezenas(dezena))  // " e " // trim(unidades(unidade))
    else
        extenso = trim(centenas(centena)) // " e " // trim(dezenas(dezena)) // " e " // trim(unidades(dezena_unidade))
    end if
    return
end function extenso
