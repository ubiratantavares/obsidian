!
! Cálculo da área de vários triangulos a partir de suas bases e alturas. O programa
! pára quando encontra uma base ou altura com valor zero ou negativo
!
PROGRAM area_varios_triangulos
    IMPLICIT NONE
    REAL :: base, altura, area
 
    WRITE(*, *) "Cálculo da área de vários triangulos a partir de suas bases e alturas."
    WRITE(*, *) "O programa pára quando encontra uma base ou altura com valor zero ou negativo: "
    WRITE(*, *)
    WRITE(*, *) "Qual a base deste triangulo? Digite uma base nula ou negativa para parar: "
    READ(*, *) base
    WRITE(*, *) "Qual a altura deste triangulo? Digite uma altura nula ou negativa para parar: "
    READ(*, *) altura
    DO WHILE (altura > 0)
        area = base * altura / 2
        WRITE(*, *) "A area deste triangulo = ", area
        WRITE(*, *) "Qual a base deste triangulo? Digite uma base nula ou negativa para parar: "
        READ(*, *) base
        WRITE(*, *) "Qual a altura deste triangulo? Digite uma altura nula ou negativa para parar: "
        READ(*, *) altura
    END DO
    STOP
END PROGRAM area_varios_triangulos
