!
! Quest�o 08 da Lista de exerc�cios para sala de aula - Cap�tulo F90/2
!
program raizes
    implicit none
    real :: a, b, c, x1, x2
    
    write(*, *) "Calcular as ra�zes de uma equa��o do segundo grau a partir dos coeficientes (a, b e c):"
    write(*, *) "Informe coeficientes que gere delta maior que zero."
    write(*, *)
    write(*, *) "Informe os valores de a, b e c:"
    read(*, *) a, b, c
    x1 = (-b + (b**2 - 4 * a * c)**0.5) / (2 * a)
    x2 = (-b - (b**2 - 4 * a * c)**0.5) / (2 * a)
    write(*, *)
    write(*, *) "x1 =", x1
    write(*, *) "x2 =", x2
    stop
end program raizes
