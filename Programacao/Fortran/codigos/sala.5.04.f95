!
! Quest�o 04 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program somatorio_maior_1000
    implicit none
    integer :: valor, soma
    
    write(*, *) "Soma v�rios valores inteiros e p�ra quando o somat�rio deles for maior que 1000:"
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

