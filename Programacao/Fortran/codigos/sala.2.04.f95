!
! Quest�o 04 da Lista de exerc�cios para sala de aula - Cap�tulo F90/2
!
program soma_digitos
    implicit none
    integer :: numero, d1, d2, d3, d4, d5, soma
    
    write(*, *) "Mostrar a soma dos digitos de um inteiro de cinco digitos:"
    write(*, *)
    write(*, *)  "Digite um n�mero inteiro de cinco digitos:"
    read(*, *) numero
    d1 = numero / 10000
    numero = numero - d1 * 10000
    d2 = numero / 1000
    numero = numero - d2 * 1000
    d3 = numero / 100
    numero = numero - d3 * 100
    d4 = numero / 10
    numero = numero - d4 * 10
    d5 = numero
    soma = d1 + d2 + d3 + d4 + d5
    write(*, *)
    write(*, *) "Soma dos digitos =", soma
    stop
end program soma_digitos
