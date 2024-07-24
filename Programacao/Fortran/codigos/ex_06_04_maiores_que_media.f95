!
!  Ler 20 inteiros e mostrar dentre eles os que são maiores que a media deles
!
PROGRAM maiores_que_a_media
    IMPLICIT NONE
    INTEGER :: valores(20), indice, soma = 0
    REAL :: media

    WRITE (*, *) "Lê 20 inteiros e os mostra os que são maiores que a media:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 20 inteiros:"
    DO indice = 1, 20, 1
        READ (*, *) valores(indice)
        soma = soma + valores(indice)
    END DO
    media = soma / 20.0
    WRITE (*, *) "Inteiros maiores que a media:"
    DO indice = 1, 20, 1
        IF (valores(indice) > media) THEN
            WRITE (*, *) valores(indice)
        END IF
    END DO
    STOP         
END PROGRAM maiores_que_a_media
