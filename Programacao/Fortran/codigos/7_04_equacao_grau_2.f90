!
! Programa que l� os coeficientes (a, b e c) de uma equa��o do segundo grau
! e calcule as suas ra�zes: x1 e x2.
!
! Programa principal
PROGRAM equacao_grau_2
    IMPLICIT NONE
    REAL :: a, b, c, x1, x2
    
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Programa que calcula as ra�zes reais de uma equa�ao do segundo grau:"
    WRITE (*, *)
    ! Entrada dos coeficientes
    WRITE (*, *) "Informe os coeficientes da equa�ao do segundo grau (a, b e c),"
    WRITE (*, *) "para c�lculo de ra�zes reais: "
    READ (*, *) a, b, c
    WRITE (*, *)
    ! C�lculo do delta e verifica��o da possibilida de c�lculo
    IF (b ** 2 - 4 * a * c >= 0) THEN
        ! C�lculo das ra�zes
        CALL raizes_segundo_grau(a, b, c, x1, x2)
        ! Apresenta��o dos dados de sa�da
        WRITE (*, *) "Coeficientes da equa�ao do segundo grau:"
        WRITE (*, *)
        WRITE (*, *) "a = ", a
        WRITE (*, *)
        WRITE (*, *) "b = ", b
        WRITE (*, *)
        WRITE (*, *) "c = ", c
        WRITE (*, *)
        WRITE (*, *) "Ra�zes reais:    x1 = ", x1, " e    x2 = ", x2
    ELSE
        ! Apresenta��o da mensagem de impossibilidade do c�culo
        WRITE (*, *) "N�o � poss�vel calcular as ra�zes reais para esta equa��o!"
    END IF
    WRITE (*, *)
    STOP
END PROGRAM equacao_grau_2
!
! Subrotina que calcula as duas ra�zes de uma equa��o do segundo grau
!
! Subprograma sub-rotina
SUBROUTINE raizes_segundo_grau(coef1, coef2, coef3, raiz1, raiz2)
    ! Declara��o dos par�metro de entrada e sa�da
    IMPLICIT NONE
    REAL :: coef1, coef2, coef3, raiz1, raiz2, delta
    
    ! C�lculo do delta
    delta = coef2**2 - 4 * coef1* coef3
    ! C�lculo das raizes
    raiz1 = (-coef2 + SQRT(delta)) / (2 * coef1)
    raiz2 = (-coef2 - SQRT(delta)) / (2 * coef1)
    ! Encerramento da sub-rotina
    RETURN
END SUBROUTINE raizes_segundo_grau