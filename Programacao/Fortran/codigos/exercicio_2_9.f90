!
! Exerc�cio 2.9
!
! Fa�a um programa Fortran que leia os coeficientes (a, b e c) de uma equa��o
! do segundo grau e calcule as suas ra�zes: x1 e x2.
! S� ser�o digitados coeficientes que levem � ra�zes reais!
PROGRAM raizes_reais
    IMPLICIT NONE
    REAL :: a, b, c, delta, x1, x2
    
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que calcula as ra�zes reais de uma equa�ao do segundo grau:"
    WRITE (*, *)
    ! Entrada dos coeficientes
    WRITE (*, *) "Informe os coeficientes da equa�ao do segundo grau (a, b e c),"
    WRITE (*, *) "para c�lculo de ra�zes reais: "
    READ (*, *) a,b,c
    ! C�lculo do delta (uma �nica vez)
    delta = b ** 2 - 4 * a * c
    ! C�lculo das ra�zes
    x1 = (-b + SQRT(delta)) / 2 * a
    x2 = (-b - SQRT(delta)) / 2 * a
    ! Apresenta��o dos resultados
    WRITE (*, *) "Coeficientes da equa�ao do segundo grau:"
    WRITE (*, *)
    WRITE (*, *) "a = ", a
    WRITE (*, *)
    WRITE (*, *) "b = ", b
    WRITE (*, *)
    WRITE (*, *) "c = ", c
    WRITE (*, *)
    WRITE (*, *) "Ra�zes reais:    x1 = ", x1, " e    x2 = ", x2
    STOP
END PROGRAM raizes_reais
