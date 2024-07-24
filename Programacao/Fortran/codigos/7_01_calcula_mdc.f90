!
! Programa para calcular o MDC de dois inteiros positivos
!
! Programa principal
PROGRAM calcula_mdc
    IMPLICIT NONE
    ! Declaração das variáveis do programa e do retorno da função
    INTEGER :: inteiro1, inteiro2, mdc

    ! Apresentação da finalidade do programa
    WRITE(*, *) "Calculo do MDC de dois inteiros:"
    WRITE(*, *)
    ! Leitura do dados de entrada
    WRITE(*, *) "Informe os dois numeros inteiros para calculo do MDC: "
    READ(*, *) inteiro1, inteiro2
    ! Chamada da função mdc e saída do resultado
    WRITE(*, *)
    WRITE (*, *) "MDC = ", mdc(inteiro1, inteiro2)
    ! Encerra o programa
    STOP
END PROGRAM calcula_mdc
!
! Função que calcula um MDC
!
! Subprograma função
FUNCTION mdc(dividendo, divisor)
    IMPLICIT NONE
    ! Declaração do retorno, dos parâmetros e das variáveis da função
    INTEGER :: mdc, dividendo, divisor, resto

    ! Calculo do MDC
    resto = MOD(dividendo, divisor)
    DO WHILE (resto /= 0)
        dividendo = divisor
        divisor = resto
        resto = MOD(dividendo, divisor)
    END DO
    ! Coloca resultado no retorno da função
    mdc = divisor
    ! Encerra função e retorna o resultado
    RETURN
END FUNCTION mdc
