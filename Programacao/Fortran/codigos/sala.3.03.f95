!
! Quest�o 03 da Lista 03 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program quociente_inteiro
    implicit none
    integer :: numero1, numero2
    
    write(*, *) "Verifica se o quociente da divis�o do primeiro numero pelo segundo resulta num inteiro:"
    write(*, *)
    write(*, *) "Informe os dois n�meros inteiros para a divisao:"
    read(*, *) numero1, numero2
    if (numero1 - numero2 * (numero1 / numero2) == 0) then
        write(*, *) "O quaciente da divis�o � inteiro!"
    end if
    stop
end program quociente_inteiro
