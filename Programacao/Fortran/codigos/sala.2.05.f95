!
! Questão 05 da Lista de exercícios para sala de aula - Capítulo F90/2
!
program binario_para_decimal
    implicit none
    integer :: numero, d1, d2, d3, d4, d5, d6, d7, d8, d9, num_decimal
    
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
    num_decimal = d1 * 2**8 + d2 * 2**7 + d3 * 2**6 + d4 * 2**5 + d5 * 2**4 + d6 * 2**3&
           & + d7 * 2**2 + d8 * 2**1 + d9 * 2**0
    write(*, *)
    write(*, *) "Numero em decimaal =", num_decimal
    stop
end program binario_para_decimal
