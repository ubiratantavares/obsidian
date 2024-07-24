!
! C�lculo do peso ideal de v�rias mulheres. Programa p�ra quando encontra uma
! altura zero ou negativa
!
PROGRAM peso_ideal_varias
    IMPLICIT NONE
    REAL :: altura, peso_ideal
 
    WRITE(*, *) "C�lculo do peso ideal de v�rias mulheres."
    WRITE(*, *) "O programa p�ra quando encontra uma altura zero ou negativa:"
    WRITE(*, *)
    WRITE(*, *) "Qual a altura desta mulher? Digite uma altura nula ou negativa para parar: "
    READ(*, *) altura
    DO WHILE (altura > 0)
        peso_ideal = 62.1 * altura - 44.7
        WRITE(*, *) "O peso ideal desta mulher = ", peso_ideal
        WRITE(*, *) "Qual a altura desta mulher? Digite uma altura nula ou negativa para parar: "
        READ(*, *) altura
    END DO
    STOP
END PROGRAM peso_ideal_varias
