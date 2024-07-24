!
! Programa que mostra a soma dos elementos de um conjunto de n�mero inteiros
! e os seus elementos que s�o menores que esta soma 
!
PROGRAM maiores_que_soma
    IMPLICIT NONE
    INTEGER :: indice, conjunto(10), soma

    ! Apresenta��o da finalidade do progrma
    WRITE (*, *) "Mostra a soma dos elementos de um conjunto de n�mero inteiros"
    WRITE (*, *) "e os seus elementos que s�o menores que esta soma"
    WRITE (*, *)
    ! Inicializa��o do somat�rio
    soma = 0
    ! Leitura dos dados do conjunto
    WRITE (*, *) "Informe os 10 elementos inteiros do conjunto: "
    DO indice = 1, 10, 1
        READ (*, *) conjunto(indice)
        soma = soma + conjunto(indice)
    END DO
    WRITE (*, *) "Soma dos elementos = ", soma
    WRITE (*, *)
    WRITE (*, *) "Elementos maiores que a soma: "
    DO indice = 1, 10, 1
        IF(conjunto(indice) > soma) THEN
            WRITE(*, *) conjunto(indice)
        END IF
    END DO
    STOP
END PROGRAM maiores_que_soma
   