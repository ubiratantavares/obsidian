!
! Quest�o 02 da Lista 03 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program maior
    implicit none
    integer :: numero1, numero2, numero3
    
    write(*, *) "Mostra o maior de tres n�meros inteiros diferentes lidos:"
    write(*, *)
    write(*, *) "Informe os tres n�meros inteiros diferentes:"
    read(*, *) numero1, numero2, numero3
    if (numero1 > numero2 .and. numero1 > numero3) then
        write(*, *) "O numero", numero1, " e o maior!"
    else if (numero2 > numero1 .and. numero2 > numero3) then
        write(*, *) "O numero", numero2, " e o maior!"
    else
        write(*, *) "O numero", numero3, " e o maior!"
    end if
    stop
end program maior
