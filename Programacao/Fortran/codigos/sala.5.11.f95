!
! Quest�o 11 da Lista 05 de exerc�cios para sala de aula - Cap�tulo F90/3
!
program fibonacci
    implicit none
    integer :: penultimo, ultimo, x
    
    write(*, *) "Mostra os n�meros da Seq��ncia de Fibonacci (0, 1, 1, 2, 3, 5, 8, ...)"
    write(*, *) "menores que X. X ser� sempre maior ou igual a 2."
    write(*, *) "Os dois primeiros n�meros da seq��ncia � 0 e 1, nessa ordem; e os demais,"
    write(*, *) "ser�o a soma dos dois anteriores."
    write(*, *)
    write(*, *) "Informe o valor de X:"
    read(*, *) x
    write(*, *) "Elementos da Sequencia de Fibonacci menores que:", x
    penultimo = 0
    write(*, *) penultimo
    ultimo = 1
    write(*, *) ultimo
    ultimo = ultimo + penultimo
    do while (ultimo < x)
        write(*, *) ultimo
        penultimo = ultimo - penultimo
        ultimo = ultimo + penultimo
    end do
    stop
end program fibonacci

