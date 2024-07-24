!
! Programa para calcular o MMC de dois inteiros positivos
!
! Programa principal
PROGRAM calcula_mmc
    IMPLICIT NONE
    ! Declaração das variáveis do programa e do retorno da função
    INTEGER :: inteiro1, inteiro2, mmc

    ! Apresentação da finalidade do programa
    WRITE(*, *) "Calculo do mínimo múltiplo comum(MMC) de dois inteiros:"
    WRITE(*, *)
    ! Leitura do dados de entrada
    WRITE(*, *) "Informe os dois numeros inteiros para calculo do MMC: "
    READ(*, *) inteiro1, inteiro2
    ! Chamada da função mdc e saída do resultado
    WRITE(*, *)
    WRITE (*, *) "MMC = ", mmc(inteiro1, inteiro2)
    ! Encerra o programa
    STOP
END PROGRAM calcula_mmc
!
! Função que calcula um MMC
!
! Subprograma função
FUNCTION mmc(numero1, numero2)
    IMPLICIT NONE
    ! Declaração do retorno, dos parâmetros e das variáveis da função
    INTEGER :: mmc, numero1, numero2

    ! Calculo do MMC
    mmc = numero1
    DO WHILE (MOD(mmc, numero2) /= 0)
        mmc = mmc + numero1
    END DO
    ! Encerra função e retorna o resultado
    RETURN
END FUNCTION mmc
