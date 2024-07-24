!
! C�lculo do peso ideal de v�rias mulheres. O programa pergunta, ap�s cada c�culo,
! se o usu�rio deseja calcular o peso ideal de outra mulher. O usu�rio responde:
! "S" (sim) ou "N" (n�o).
!
PROGRAM peso_ideal_varias
    IMPLICIT NONE
    CHARACTER (LEN = 1) :: resposta
    REAL :: altura, peso_ideal

    WRITE(*, *) "C�lculo do peso ideal de v�rias mulheres. O programa pergunta, ap�s cada c�culo,"
    WRITE(*, *) "se o usu�rio deseja calcular o peso ideal de outra mulher. O usu�rio responde:"
    WRITE(*, *) """S"" (sim) ou ""N"" (n�o)."
    WRITE(*, *)
    resposta = "S"
    DO WHILE (resposta == "S" .OR. resposta == "s")
        WRITE(*, *) "O peso ideal desta mulher = ", peso_ideal
        WRITE(*, *) "Qual a altura desta mulher? "
        peso_ideal = 62.1 * altura - 44.7
        READ(*, *) altura
        WRITE(*, *) "Deseja continuar a calcular o peso ideal de outra mulher? "
        READ(*, *) resposta
    END DO
    STOP
END PROGRAM peso_ideal_varias
