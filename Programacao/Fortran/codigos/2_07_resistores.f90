PROGRAM resistores
    IMPLICIT NONE
    REAL :: resistor1, resistor2, resistor3, serie, paralelo
    WRITE (*, *) "Programa para calculo da ressistencia final de 3 resistores, em serie e paralelo:"
    WRITE (*, *)
    WRITE (*, *) "Informe os valores dos 3 resistores, em Ohms: "
    READ (*, *) resistor1, resistor2, resistor3
    serie = resistor1 + resistor2 + resistor3
    paralelo = 1 / (1 / resistor1 + 1 / resistor2 + 1 / resistor3)
    WRITE (*, *) "Informe os valores dos 3 resistores, em Ohms: "
    WRITE (*, *) "Valores dos 3 resistores: "
    WRITE (*, *) "Resistor 1 = ", resistor1, " ohms"
    WRITE (*, *) "Resistor 2 = ", resistor2, " ohms"
    WRITE (*, *) "Resistor 3 = ", resistor3, " ohms"
    WRITE (*, *)
    WRITE (*, *) "Resistencia do circuito em serie = ", serie, " ohms"
    WRITE (*, *) "Resistencia do circuito em paralolo = ", paralelo, " ohms"
    STOP
END PROGRAM resistores
