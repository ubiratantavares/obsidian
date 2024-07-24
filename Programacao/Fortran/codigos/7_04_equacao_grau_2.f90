!
! Programa que lê os coeficientes (a, b e c) de uma equação do segundo grau
! e calcule as suas raízes: x1 e x2.
!
! Programa principal
PROGRAM equacao_grau_2
    IMPLICIT NONE
    REAL :: a, b, c, x1, x2
    
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Programa que calcula as raízes reais de uma equaçao do segundo grau:"
    WRITE (*, *)
    ! Entrada dos coeficientes
    WRITE (*, *) "Informe os coeficientes da equaçao do segundo grau (a, b e c),"
    WRITE (*, *) "para cálculo de raízes reais: "
    READ (*, *) a, b, c
    WRITE (*, *)
    ! Cálculo do delta e verificação da possibilida de cálculo
    IF (b ** 2 - 4 * a * c >= 0) THEN
        ! Cálculo das raízes
        CALL raizes_segundo_grau(a, b, c, x1, x2)
        ! Apresentação dos dados de saída
        WRITE (*, *) "Coeficientes da equaçao do segundo grau:"
        WRITE (*, *)
        WRITE (*, *) "a = ", a
        WRITE (*, *)
        WRITE (*, *) "b = ", b
        WRITE (*, *)
        WRITE (*, *) "c = ", c
        WRITE (*, *)
        WRITE (*, *) "Raízes reais:    x1 = ", x1, " e    x2 = ", x2
    ELSE
        ! Apresentação da mensagem de impossibilidade do cáculo
        WRITE (*, *) "Não é possível calcular as raízes reais para esta equação!"
    END IF
    WRITE (*, *)
    STOP
END PROGRAM equacao_grau_2
!
! Subrotina que calcula as duas raízes de uma equação do segundo grau
!
! Subprograma sub-rotina
SUBROUTINE raizes_segundo_grau(coef1, coef2, coef3, raiz1, raiz2)
    ! Declaração dos parâmetro de entrada e saída
    IMPLICIT NONE
    REAL :: coef1, coef2, coef3, raiz1, raiz2, delta
    
    ! Cálculo do delta
    delta = coef2**2 - 4 * coef1* coef3
    ! Cálculo das raizes
    raiz1 = (-coef2 + SQRT(delta)) / (2 * coef1)
    raiz2 = (-coef2 - SQRT(delta)) / (2 * coef1)
    ! Encerramento da sub-rotina
    RETURN
END SUBROUTINE raizes_segundo_grau