!
! Questão 08 da Lista de exercícios para sala de aula - Capítulo F90/1
!
program digito_do_meio
    write(*, *) "Mostrar, através de uma expressão aritmética, o dígito do meio do número159:"
    write(*, *)
    write(*, *) "Digito do meio =", (159 - 159 /100 * 100) / 10
    stop
end program digito_do_meio
