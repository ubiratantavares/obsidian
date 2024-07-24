!
! Programa que soma os elementos de mesma posi��o de dois conjuntos,
! gerando os elementos de mesma posi��o de um terceiro conjunto
!
    PROGRAM soma_elementos
    IMPLICIT NONE
    INTEGER :: indice, conjA(10), conjB(10), conjsoma(10)
  
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Soma dos conjuntos, elemento a elemento: "
    WRITE (*, *)
    ! Leitura dos elementos do primeiro conjunto
    WRITE (*, *) "Informe os 10 elementos inteiros do conjunto 1: "
    DO indice = 1, 10, 1
        READ (*, *) conjA(indice)
    END DO
    ! Leitura dos elementos do segundo conjunto
    WRITE (*, *) "Informe os 10 elementos inteiros do conjunto 2: "
    DO indice = 1, 10, 1
        READ (*, *) conjB(indice)
    END DO
    ! Soma e apresenta�ao dos elementos somados
    WRITE(*, *) "Conjunto soma resultante:"
    DO indice = 1, 10, 1
        conjsoma(indice) = conjA(indice) + conjB(indice)
        WRITE(*, *) conjsoma(indice)
    END DO
    STOP
END PROGRAM soma_elementos
   