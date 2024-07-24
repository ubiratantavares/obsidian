!
! Programa para calcular o MMC de dois inteiros positivos
!
! Programa principal
PROGRAM calcula_mmc
    IMPLICIT NONE
    ! Declara��o das vari�veis do programa e do retorno da fun��o
    INTEGER :: inteiro1, inteiro2, mmc

    ! Apresenta��o da finalidade do programa
    WRITE(*, *) "Calculo do m�nimo m�ltiplo comum(MMC) de dois inteiros:"
    WRITE(*, *)
    ! Leitura do dados de entrada
    WRITE(*, *) "Informe os dois numeros inteiros para calculo do MMC: "
    READ(*, *) inteiro1, inteiro2
    ! Chamada da fun��o mdc e sa�da do resultado
    WRITE(*, *)
    WRITE (*, *) "MMC = ", mmc(inteiro1, inteiro2)
    ! Encerra o programa
    STOP
END PROGRAM calcula_mmc
!
! Fun��o que calcula um MMC
!
! Subprograma fun��o
FUNCTION mmc(numero1, numero2)
    IMPLICIT NONE
    ! Declara��o do retorno, dos par�metros e das vari�veis da fun��o
    INTEGER :: mmc, numero1, numero2

    ! Calculo do MMC
    mmc = numero1
    DO WHILE (MOD(mmc, numero2) /= 0)
        mmc = mmc + numero1
    END DO
    ! Encerra fun��o e retorna o resultado
    RETURN
END FUNCTION mmc
