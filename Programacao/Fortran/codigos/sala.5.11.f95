!
! Questão 11 da Lista 05 de exercícios para sala de aula - Capítulo F90/3
!
program fibonacci
    implicit none
    integer :: penultimo, ultimo, x
    
    write(*, *) "Mostra os números da Seqüência de Fibonacci (0, 1, 1, 2, 3, 5, 8, ...)"
    write(*, *) "menores que X. X será sempre maior ou igual a 2."
    write(*, *) "Os dois primeiros números da seqüência é 0 e 1, nessa ordem; e os demais,"
    write(*, *) "serão a soma dos dois anteriores."
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

