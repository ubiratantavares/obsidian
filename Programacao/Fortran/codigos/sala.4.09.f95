!
! Quest�o 09 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program conta_divisiveis
    implicit none
    integer :: n, d, vezes, numero, soma
    
    write(*, *) "L� N n�meros e mostra quantos s�o divis�veis pelo n�mero d:"
    write(*, *)
    write(*, *) "Informe o valor de N:"
    read(*, *) n
    write(*, *) "Informe o valor de d:"
    read(*, *) d
    write(*, *)
    soma = 0
    do vezes = 1, n, 1
        write(*, *) "Informe um n�mero inteiro:"
        read(*, *) numero
        if (mod(numero, d) == 0) then
            soma = soma + 1
        end if
    end do
    write(*, *)
    write(*, *) "Ocorreram", soma, " n�meros divis�veis por", d
    stop
end program conta_divisiveis
