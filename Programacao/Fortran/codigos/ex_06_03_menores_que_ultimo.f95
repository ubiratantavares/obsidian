!
!  Ler 20 inteiros e mostrar dentre eles os que s�o menores que o �ltimo
!
PROGRAM menores_que_ultimo
    IMPLICIT NONE
    INTEGER :: valores(20), indice

    WRITE (*, *) "L� 20 inteiros e os mostra os que s�o menores que o ultimo:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 20 inteiros:"
    DO indice = 1, 20, 1
        READ (*, *) valores(indice)
    END DO
    WRITE (*, *) "Inteiros menores que o ultimo:"
    DO indice = 1, 20, 1
        IF (valores(indice) < valores(20)) THEN
            WRITE (*, *) valores(indice)
        END IF
    END DO
    STOP         
END PROGRAM menores_que_ultimo
