!
! Quest�o 07 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program conta_pares
    implicit none
    integer :: inteiro, numero, soma, n
    
    write(*, *) "L� N inteiros positivos e mostra quantos n�meros pares ocorreram:"
    write(*, *)
    write(*, *) "Quantos n�meros ser�o lidos (N)?:"
    read(*, *) n
    soma = 0
    do inteiro = 1, n, 1
        write(*, *) "Informe um n�mero inteiro:"
        read(*, *) numero
        if (mod(numero, 2) == 0) then
            soma = soma + 1
        end if
    end do
    write(*, *) "A quantidade de n�meros pares �", soma
    stop
end program conta_pares
