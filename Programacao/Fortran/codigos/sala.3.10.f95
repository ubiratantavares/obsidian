!
! Questão 10 da Lista de exercícios 03 para sala de aula - Capítulo F90/2
!
program existe_digito
    implicit none
    integer :: numero, d1, d2, d3, d4, d5, d
    
    write(*, *) "Verifica se o digito d esta presente num inteiro de cinco digitos:"
    write(*, *)
    write(*, *)  "Digite um número inteiro de cinco digitos:"
    read(*, *) numero
    write(*, *)  "Digite o digito d para a verificacao:"
    read(*, *) d
    d1 = numero / 10000
    numero = numero - d1 * 10000
    d2 = numero / 1000
    numero = numero - d2 * 1000
    d3 = numero / 100
    numero = numero - d3 * 100
    d4 = numero / 10
    numero = numero - d4 * 10
    d5 = numero
    write(*, *)
    if (d1 == d .or. d2 == d .or. d3 == d .or. d4 == d .or. d5 == d) then
        write(*, *) "O digito", d, " esta presente no numero!"
    end if
    stop
end program existe_digito
