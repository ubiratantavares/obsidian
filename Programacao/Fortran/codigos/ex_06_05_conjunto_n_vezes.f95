!
!  Ler 20 inteiros para um conjunto e gerar outro conjunto, elemento a elemento,
!  onde cada elemento no conjunto gerado seja n vezes maior que o elemento
!  de mesmo índice no conjunto original
!
PROGRAM conjunto_n_vezes
    IMPLICIT NONE
    INTEGER :: valores(20), multiplicado(20), indice, n

    WRITE (*, *) "Gera um conjunto, elemento a elemento, n vezes maior que o original:"
    WRITE (*, *)
    WRITE (*, *) "Informe os 20 inteiros:"
    DO indice = 1, 20, 1
        READ (*, *) valores(indice)
    END DO
    WRITE (*, *) "Informe o valor de n:"
    READ (*, *) n
    DO indice = 1, 20, 1
        multiplicado(indice) = n * valores(indice)
    END DO
    WRITE (*, *) "Valores originais:"
    WRITE (*, *) (valores(indice), indice = 1, 20, 1)
    WRITE (*, *) "Valores multiplicados por ", n, ":"
    WRITE (*, *) (multiplicado(indice), indice = 1, 20, 1)
    
    STOP         
END PROGRAM conjunto_n_vezes
