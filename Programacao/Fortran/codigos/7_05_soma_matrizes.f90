!
! Programa que soma matrizes reais de dimens�es 2x3
!
! Programa principal
PROGRAM soma_matrizes
   IMPLICIT NONE
   INTEGER :: matA(2,3), matB(2, 3), matS(2, 3)

   ! Apresenta��o da finalida de do programa
   WRITE (*, *) "Soma de matrizes inteiras 2x3:"
   WRITE (*, *)
   ! Leitura da primeira matriz
   WRITE (*, *) "Informe os dados para a primeira matriz:"
   WRITE (*, *)
   CALL le_matriz(matA)
   ! Leitura da segunda matriz
   WRITE (*, *) "Informe os dados para a segunda matriz:"
   WRITE (*, *)
   CALL le_matriz(matB)
   ! C�lculo da matriz soma
   CALL soma_mat(matA, matB, matS)
   ! Impress�o da primeira matriz
   WRITE (*, *)
   WRITE (*, *) "Primeira Matriz:"
   CALL imprime_matriz(matA)
   ! Impress�o da segunda matriz
   WRITE (*, *)
   WRITE (*, *) "Segunda Matriz:"
   CALL imprime_matriz(matB)
   ! Impress�o da matriz soma
   WRITE (*, *)
   WRITE (*, *) "Matriz Soma:"
   CALL imprime_matriz(matS)
   ! Encerramento do programa
   STOP
END PROGRAM soma_matrizes
!
! Subrotina para ler uma matriz real 2x3
!
! Subprograma sub-rotina
SUBROUTINE le_matriz(matriz)
    IMPLICIT NONE
    ! Declara��o do par�metro e das vari�veis da sub-rotina
    INTEGER :: matriz(2, 3), l, c

    ! Leitura da matriz real 2x3
    READ (*, *) ((matriz(l, c), c = 1, 3), l = 1, 2)
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE le_matriz
!
! Subrotina para somar dua matrizes 2x3
!
! Subprograma sub-rotina
SUBROUTINE soma_mat(matriz1, matriz2, matrizS)
    IMPLICIT NONE
    ! Declara��o dos par�metros e das vari�veis da sub-rotina
    INTEGER :: matriz1(2, 3), matriz2(2, 3), matrizS(2, 3), l, c

    ! Soma de matrizes reais 2x3
    DO l= 1, 2, 1
        DO c = 1, 3, 1
            matrizS(l, c) = matriz1(l, c) + matriz2(l ,c)
        END DO
    END DO
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE soma_mat
!
! Subrotina para imprimir uma matriz real 2x3
!
! Subprograma sub-rotina
SUBROUTINE imprime_matriz(matriz)
    IMPLICIT NONE
    ! Declara��o do par�metro e das vari�veis da sub-rotina
    INTEGER :: matriz(2, 3), l, c

	! Impress�o de uma matriz real 2x3 no formato padr�o
    DO l = 1, 2, 1
        WRITE (*, *) (matriz(l, c), c = 1, 3)
    END DO
    ! Encerramento da subrotina
    RETURN
END SUBROUTINE imprime_matriz
