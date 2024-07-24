!
! Questão 07 da Lista de exercícios para sala de aula - Capítulo F90/1
!
program ponderada
    write(*, *) "Encontrar a média ponderada das notas: 9.5, 8.7 e 9.3."
    write(*, *) "Os pesos da notas são respectivamente: 3, 2 e 5:"
    write(*, *)
    write(*, *) "Media Ponderada =", (9.5 * 3 + 8.7 * 2 + 9.3 * 5) / (3 + 2 + 5)
    stop
end program ponderada
