!
! Quest�o 12 da Lista de exerc�cios para sala de aula - Cap�tulo F90/1
!
program raizes
    write(*, *) "Calcular as ra�zes de uma equa��o do segundo grau cujos coeficientes (a, b e c)"
    write(*, *) "s�o respectivamente: -2, 10, 5"
    write(*, *)
    write(*, *) "x1 =", (-10 + (10**2 - 4 * (-2) * 5)**0.5) / (2 * (-2))
    write(*, *) "x2 =", (-10 - (10**2 - 4 * (-2) * 5)**0.5) / (2 * (-2))
    stop
end program raizes
