!
! Programa para calcular o MDC de dois inteiros positivos
!
! Programa principal
PROGRAM calcula_mdc
    IMPLICIT NONE
    ! Declara��o das vari�veis do programa e do retorno da fun��o
    INTEGER :: inteiro1, inteiro2, mdc

    ! Apresenta��o da finalidade do programa
    WRITE(*, *) "Calculo do MDC de dois inteiros:"
    WRITE(*, *)
    ! Leitura do dados de entrada
    WRITE(*, *) "Informe os dois numeros inteiros para calculo do MDC: "
    READ(*, *) inteiro1, inteiro2
    ! Chamada da fun��o mdc e sa�da do resultado
    WRITE(*, *)
    WRITE (*, *) "MDC = ", mdc(inteiro1, inteiro2)
    ! Encerra o programa
    STOP
END PROGRAM calcula_mdc
!
! Fun��o que calcula um MDC
!
! Subprograma fun��o
FUNCTION mdc(dividendo, divisor)
    IMPLICIT NONE
    ! Declara��o do retorno, dos par�metros e das vari�veis da fun��o
    INTEGER :: mdc, dividendo, divisor, resto

    ! Calculo do MDC
    resto = MOD(dividendo, divisor)
    DO WHILE (resto /= 0)
        dividendo = divisor
        divisor = resto
        resto = MOD(dividendo, divisor)
    END DO
    ! Coloca resultado no retorno da fun��o
    mdc = divisor
    ! Encerra fun��o e retorna o resultado
    RETURN
END FUNCTION mdc
