!
! Questão 08 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program varios_fatoriais
    implicit none
    integer :: numero, fatorial, x
    
    write(*, *) "Mostre os números que têm fatoriais menores ou iguais a X."
    write(*, *) "X sempre será positivo."
    write(*, *)
    write(*, *) "Informe o valor de X. X sempre positivo:"
    read(*, *) x
    numero = 0
    fatorial = 1
    write(*, *) "      Número    Fatorial"
    write(*, *)
    do while (fatorial <= x)
        write(*, *) numero, fatorial
        numero = numero + 1
        fatorial = fatorial * numero
    end do
    stop
end program varios_fatoriais

