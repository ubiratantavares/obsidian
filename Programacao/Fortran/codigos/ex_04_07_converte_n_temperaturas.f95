!
! Converter N temperaturas de graus Fahrenheit para Celsius
!
PROGRAM converte_n_temperaturas
    IMPLICIT NONE
    INTEGER :: vezes, n
    REAL :: fahrenheit, celsius
    
    WRITE (*, *) "Converte N temperaturas de graus Fahrenheit para Celsius:"
    WRITE (*, *)
    WRITE (*, *) "Informe o valor de N:"
    READ (*, *) n
    WRITE (*, *)
    DO vezes = 1, n, 1
         WRITE (*, *) "Informe uma temperatura em graus Fahrenheit:"
         READ (*, *) fahrenheit
         celsius = 5./9 * (fahrenheit - 32)
         WRITE (*, *) "O valor em Celsius da temperatura lida eh", celsius
         WRITE (*, *)
    END DO
    STOP
END PROGRAM converte_n_temperaturas
