!
! Quest�o 12 da Lista 04 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program eh_primo
    implicit none
    integer :: numero, divisor, conta_divisores = 0
    
    write(*, *) "L� um n�mero positivo e emite uma mensagem dizendo se ele � ou n�o primo:"
    write(*, *)
    write(*, *) "Informe o valor do numero inteiro positivo:"
    read(*, *) numero
    write(*, *)
    do divisor = 1, numero, 1
        if (mod(numero, divisor) == 0) then
            conta_divisores = conta_divisores + 1
        end if
    end do
    if (conta_divisores == 2 .AND. numero /= 1) then
    	write(*, *) "O n�mero", numero, " � primo!"
    else
    	write(*, *) "O n�mero", numero, " n�o � primo!"
    end if
    stop
end program eh_primo
