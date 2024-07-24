!
! Converter uma temperatura de graus Fahrenheit para Celsius
!
PROGRAM fahrenheit_para_celsius
    IMPLICIT NONE
    REAL :: fahrenheit, celsius
    
    WRITE (*, *) "Converte uma temperatura de graus Fahrenheit para Celsius:"
    WRITE (*, *)
    WRITE (*, *) "Informe uma temperatura em graus Fahrenheit:"
    READ (*, *) fahrenheit
    celsius = 5./9 * (fahrenheit - 32)
    WRITE (*, *) "O valor em Celsius da temperatura lida eh", celsius
    STOP
END PROGRAM fahrenheit_para_celsius
