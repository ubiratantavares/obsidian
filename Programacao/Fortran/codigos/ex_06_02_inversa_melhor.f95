!
!  Lê 5 inteiros e os mostra na ordem inversa a de leitura, usando variáveis indexadas
!
PROGRAM ordem_inversa_melhor
    IMPLICIT NONE
    INTEGER :: inteiros(5), indice

    WRITE (*, *) "Lê 5 inteiros e os mostra na ordem inversa a de leitura:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 5 inteiros:"
    DO indice = 1, 5, 1
        READ (*, *) inteiros(indice)
    END DO
    WRITE (*, *) "Inteiros na ordem inversa a de leitura:"
    DO indice = 5, 1, -1
        WRITE (*, *) inteiros(indice)
    END DO
    STOP         
END PROGRAM ordem_inversa_melhor
