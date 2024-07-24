!
! Programa que encontra o menor e o maior valor de
! um conjunto de 20 elementos reias
!
! Programa principal
PROGRAM encontra_maior_menor
   IMPLICIT NONE
   INTEGER :: valores(20), maior, menor

   ! Apresentação da finalida de do programa
   WRITE (*, *) "Encontra o menor e o maior valor de um conjunto de 20 elementos reias:"
   WRITE (*, *)
   ! Leitura dos elementos do conjunto
   WRITE (*, *) "Informe os 20 dados reais para o conjunto:"
   WRITE (*, *)
   CALL le_conjunto(20, valores)
   ! Encontra o maior e o menor elementos do conjunto
   CALL maior_menor_conjunto(20, valores, maior, menor)
   ! Impressão do conjunto
   WRITE (*, *)
   WRITE (*, *) "Conjunto Lido:"
   CALL imprime_conjunto(20, valores)
   ! Impressão do maior e do menor elementos
   WRITE (*, *)
   WRITE (*, *) "Maior elemento =", maior, " e Menor elemento =", menor
   ! Encerramento do programa
   STOP
END PROGRAM encontra_maior_menor
!
! Subrotina para ler uma ma
!
! Subprograma sub-rotina
SUBROUTINE le_conjunto(tamanho, conjunto)
    IMPLICIT NONE
    ! Declaração do parâmetro e das variáveis da sub-rotina
    INTEGER :: tamanho, conjunto(tamanho), indice

    ! Leitura do conjunto
    READ (*, *) (conjunto(indice), indice = 1, tamanho, 1)
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE le_conjunto
!
! Subrotina para somar dua matrizes 2x3
!
! Subprograma sub-rotina
SUBROUTINE maior_menor_conjunto(tamanho, conjunto, maior, menor)
    IMPLICIT NONE
    ! Declaração dos parâmetros e das variáveis da sub-rotina
    INTEGER :: tamanho, conjunto(20), maior, menor, indice

    ! Considera o primeiro elemento como o maior e o menor
    maior = conjunto(1)
    menor = conjunto(1)
    ! Encontra o maior e menor elementos
    DO indice= 2, tamanho, 1
        IF (conjunto(indice) > maior) THEN
            maior = conjunto(indice)
        END IF
        IF (conjunto(indice) < menor) THEN
            menor = conjunto(indice)
        END IF
    END DO
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE maior_menor_conjunto
!
! Subrotina para imprimir um conjunto real
!
! Subprograma sub-rotina
SUBROUTINE imprime_conjunto(tamanho, conjunto)
    IMPLICIT NONE
    ! Declaração do parâmetro e das variáveis da sub-rotina
    INTEGER :: tamanho, conjunto(tamanho), indice

	! Impressão do conjunto
    DO indice = 1, tamanho, 1
        WRITE (*, *) conjunto(indice)
    END DO
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE imprime_conjunto
