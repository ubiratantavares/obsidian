!
! Questão 11 da Lista de exercícios 03 para sala de aula - Capítulo F90/3
!
program conta_um
    implicit none
    integer :: numero, d1, d2, d3, d4, d5, d6, d7, d8, d9, contador = 0
    
    write(*, *) "Conversao de um binario de nove digitos para decimal:"
    write(*, *)
    write(*, *)  "Digite um número inteiro binario de nove digitos:"
    read(*, *) numero
    d1 = numero / 100000000
    numero = numero - d1 * 100000000
    d2 = numero / 10000000
    numero = numero - d2 * 10000000
    d3 = numero / 1000000
    numero = numero - d3 * 1000000
    d4 = numero / 100000
    numero = numero - d4 * 100000
    d5 = numero / 10000
    numero = numero - d5 * 10000
    d6 = numero / 1000
    numero = numero - d6 * 1000
    d7 = numero / 100
    numero = numero - d7 * 100
    d8 = numero / 10
    numero = numero - d8 * 10
    d9 = numero
    if (d1 == 1) then
        contador = contador + 1
    endif
    if (d2 == 1) then
        contador = contador + 1
    endif
    if (d3 == 1) then
        contador = contador + 1
    endif
    if (d4 == 1) then
        contador = contador + 1
    endif
    if (d5 == 1) then
        contador = contador + 1
    endif
    if (d6 == 1) then
        contador = contador + 1
    endif
    if (d7 == 1) then
        contador = contador + 1
    endif
    if (d8 == 1) then
        contador = contador + 1
    endif
    if (d9 == 1) then
        contador = contador + 1
    endif
    write(*, *)
    write(*, *) "A quantidade de digitos 1 no numero eh", contador
    stop
end program conta_um
