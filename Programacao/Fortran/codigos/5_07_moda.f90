!
! Programa para calcular a moda de uma conjunto de até 50 temperaturas,
! variando entre 1 e 50 graus. O Programa parará quando ler uma temperatura
! menor que 1 ou maior que 50
!
PROGRAM calcula_moda
    IMPLICIT NONE
    INTEGER :: frequencia(50), temp, maior_frequencia, indice, moda
   
    ! Apresentaçao da finalidade do programa
    WRITE (*, *) "Informe uma tempertura inteira entre 1 e 50 graus: "
    WRITE (*, *)
    ! Inicialização dos contador de frequencia
    DO indice = 1, 50, 1
        frequencia(indice) = 0
    END DO
    ! Leitura da primeira temperatura
    WRITE (*, *) "Informe uma tempertura inteira entre 1 e 50 graus: "
    READ (*, *) temp
    DO WHILE (temp >= 1 .AND. temp <= 50)
        ! Contagem da frequencia
        frequencia(temp) = frequencia(temp) + 1
        ! Leitura das demais temperaturas
        WRITE (*, *) "Informe uma tempertura inteira entre 1 e 50 graus: "
        READ (*, *) temp
    END DO
    ! Encontra a moda que é a maior frequencia
    maior_frequencia = frequencia(1)
    moda = 1
    DO indice = 2, 50, 1
        IF (frequencia(indice) > moda) THEN
            maior_frequencia = frequencia(indice)
            moda = indice
        END IF
    END DO
    ! Mostra a moda
    WRITE(*, *) "A moda =", moda, " com a frequencia = ", maior_frequencia
    STOP
END PROGRAM calcula_moda
