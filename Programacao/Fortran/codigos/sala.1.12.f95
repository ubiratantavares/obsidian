!
! Questão 12 da Lista de exercícios para sala de aula - Capítulo F90/1
!
program raizes
    write(*, *) "Calcular as raízes de uma equação do segundo grau cujos coeficientes (a, b e c)"
    write(*, *) "são respectivamente: -2, 10, 5"
    write(*, *)
    write(*, *) "x1 =", (-10 + (10**2 - 4 * (-2) * 5)**0.5) / (2 * (-2))
    write(*, *) "x2 =", (-10 - (10**2 - 4 * (-2) * 5)**0.5) / (2 * (-2))
    stop
end program raizes
