!
! Questão 01 da Lista 07 de exercícios para sala de aula - Capítulo F90/5
!
program soma_digitos
    implicit none
    integer :: inteiro, soma_dig

    write(*, *) "Utiliza uma função que recebe um inteiro de 9 dígitos e retorne a"
    write(*, *) "soma destes dígitos. O programa lerá o inteiro e apresentará a soma."
    write(*, *)
    write(*, *) "Informe um numero inteiro de ate 9 digitos:"
    read(*, *) inteiro
    write(*, *)
    write(*, *) "A soma dos digitos deste inteiro e", soma_dig(inteiro)
    stop
end program soma_digitos

function soma_dig(numero)
    implicit none
    integer :: numero, dig, soma_dig

    soma_dig = 0
    do dig = 1, 9, 1
        soma_dig = soma_dig + mod(numero, 10)
        numero = numero / 10
    end do
    return
end function soma_dig