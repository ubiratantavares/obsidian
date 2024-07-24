!
!  Lê 5 inteiros e os mostra na ordem inversa a de leitura
!
PROGRAM ordem_inversa
    IMPLICIT NONE
    INTEGER :: inteiro1, inteiro2, inteiro3, inteiro4, inteiro5

    WRITE (*, *) "Lê 5 inteiros e os mostra na ordem inversa a de leitura:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 5 inteiros:"
    READ (*, *) inteiro1, inteiro2, inteiro3, inteiro4, inteiro5
    WRITE (*, *) "Inteiros na ordem inversa a de leitura:"
    WRITE (*, *) inteiro5, inteiro4, inteiro3, inteiro2, inteiro1
    STOP         
END PROGRAM ordem_inversa
