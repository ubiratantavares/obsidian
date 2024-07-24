!
! Exercício 2.9
!
! Faça um programa Fortran que leia os coeficientes (a, b e c) de uma equação
! do segundo grau e calcule as suas raízes: x1 e x2.
! Só serão digitados coeficientes que levem à raízes reais!
PROGRAM raizes_reais
    IMPLICIT NONE
    REAL :: a, b, c, delta, x1, x2
    
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que calcula as raízes reais de uma equaçao do segundo grau:"
    WRITE (*, *)
    ! Entrada dos coeficientes
    WRITE (*, *) "Informe os coeficientes da equaçao do segundo grau (a, b e c),"
    WRITE (*, *) "para cálculo de raízes reais: "
    READ (*, *) a,b,c
    ! Cálculo do delta (uma única vez)
    delta = b ** 2 - 4 * a * c
    ! Cálculo das raízes
    x1 = (-b + SQRT(delta)) / 2 * a
    x2 = (-b - SQRT(delta)) / 2 * a
    ! Apresentação dos resultados
    WRITE (*, *) "Coeficientes da equaçao do segundo grau:"
    WRITE (*, *)
    WRITE (*, *) "a = ", a
    WRITE (*, *)
    WRITE (*, *) "b = ", b
    WRITE (*, *)
    WRITE (*, *) "c = ", c
    WRITE (*, *)
    WRITE (*, *) "Raízes reais:    x1 = ", x1, " e    x2 = ", x2
    STOP
END PROGRAM raizes_reais
