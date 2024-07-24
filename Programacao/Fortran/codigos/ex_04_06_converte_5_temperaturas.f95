!
! Converter 5 temperaturas de graus Fahrenheit para Celsius
!
PROGRAM converte_5_temperaturas
    IMPLICIT NONE
    INTEGER :: vezes
    REAL :: fahrenheit, celsius
    
    WRITE (*, *) "Converte cinco temperaturas de graus Fahrenheit para Celsius:"
    WRITE (*, *)
    DO vezes = 1, 5, 1
         WRITE (*, *) "Informe uma temperatura em graus Fahrenheit:"
         READ (*, *) fahrenheit
         celsius = 5./9 * (fahrenheit - 32)
         WRITE (*, *) "O valor em Celsius da temperatura lida eh", celsius
         WRITE (*, *)
    END DO
    STOP
END PROGRAM converte_5_temperaturas
