!
! Quest�o 08 da Lista de exerc�cios para sala de aula - Cap�tulo F90/1
!
program digito_do_meio
    write(*, *) "Mostrar, atrav�s de uma express�o aritm�tica, o d�gito do meio do n�mero159:"
    write(*, *)
    write(*, *) "Digito do meio =", (159 - 159 /100 * 100) / 10
    stop
end program digito_do_meio
