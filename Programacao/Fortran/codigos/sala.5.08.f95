!
! Quest�o 08 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program varios_fatoriais
    implicit none
    integer :: numero, fatorial, x
    
    write(*, *) "Mostre os n�meros que t�m fatoriais menores ou iguais a X."
    write(*, *) "X sempre ser� positivo."
    write(*, *)
    write(*, *) "Informe o valor de X. X sempre positivo:"
    read(*, *) x
    numero = 0
    fatorial = 1
    write(*, *) "      N�mero    Fatorial"
    write(*, *)
    do while (fatorial <= x)
        write(*, *) numero, fatorial
        numero = numero + 1
        fatorial = fatorial * numero
    end do
    stop
end program varios_fatoriais

