!
! Cálculo do peso ideal de várias mulheres. O programa pergunta, após cada cáculo,
! se o usuário deseja calcular o peso ideal de outra mulher. O usuário responde:
! "S" (sim) ou "N" (não).
!
PROGRAM peso_ideal_varias
    IMPLICIT NONE
    CHARACTER (LEN = 1) :: resposta
    REAL :: altura, peso_ideal

    WRITE(*, *) "Cálculo do peso ideal de várias mulheres. O programa pergunta, após cada cáculo,"
    WRITE(*, *) "se o usuário deseja calcular o peso ideal de outra mulher. O usuário responde:"
    WRITE(*, *) """S"" (sim) ou ""N"" (não)."
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
