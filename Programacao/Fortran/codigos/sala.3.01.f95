!
! Quest�o 01 da Lista 03 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program menor
    implicit none
    integer :: numero1, numero2
    
    write(*, *) "Mostra o menor de dois n�meros inteiros diferentes lidos:"
    write(*, *)
    write(*, *) "Informe os dois n�meros inteiros diferentes:"
    read(*, *) numero1, numero2
    if (numero1 < numero2) then
        write(*, *) "O numero", numero1, " e o menor!"
    else
        write(*, *) "O numero", numero2, " e o menor!"
    end if
    stop
end program menor
