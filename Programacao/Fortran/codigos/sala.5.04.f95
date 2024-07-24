!
! Questão 04 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program somatorio_maior_1000
    implicit none
    integer :: valor, soma
    
    write(*, *) "Soma vários valores inteiros e pára quando o somatório deles for maior que 1000:"
    write(*, *)
    write(*, *) "Informe um valor inteiro:"
    read(*, *) valor
    soma = valor
    do while (soma <= 1000)
        write(*, *) "Informe um valor inteiro:"
        read(*, *) valor
        soma = soma + valor
    end do
    write(*, *)
    write(*, *) "O somatorio obtido foi:", soma
    stop
end program somatorio_maior_1000

