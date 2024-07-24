!
!  Ler 20 inteiros, armazená-los em uma variável indexada e, em seguida,
!  transferir uma cópia dos elementos pares para outra variável indexada.
!  No final, inprimir os elementos das duas variáveis indexadas
!
PROGRAM transfere_pares
    IMPLICIT NONE
    INTEGER :: valores(20), pares(20), indice, quant_par

    WRITE (*, *) "Tranfere os elementos pares de uma variável indexada para outra:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 20 inteiros:"
    READ (*, *) (valores(indice), indice = 1, 20, 1)
    quant_par = 0
    DO indice = 1, 20, 1
        IF (mod(valores(indice), 2) == 0) THEN
            quant_par = quant_par + 1
            pares(quant_par) = valores(indice)
        END IF
    END DO
    WRITE (*, *) "Valores originais:"
    WRITE (*, *) (valores(indice), indice = 1, 20, 1)
    WRITE (*, *) "Valores pares:"
    WRITE (*, *) (pares(indice), indice = 1, quant_par, 1)
    
    STOP         
END PROGRAM transfere_pares
