!
! Exercicio 1.3
!
! Calcular a dist�ncia entre dois pontos A e B, para as coordenadas:
!
! A = (2, 3)
!
! B = (5, 8)
!
PROGRAM exercicio_1_3

    ! C�lculo da distancia e apresenta��o dos resultados
    WRITE (*, *) "A distancia entre dois pontos A e B eh ", ((5 - 2)**2 + (8 - 3)**2)**0.5
!   Forma alternativa do c�lculo da raiz quadrada, usando a fun��o SQRT()
!   WRITE (*, *) "A distancia entre dois pontos A e B eh ", SQRT((5. - 2)**2 + (8 - 3)**2)
    STOP
END PROGRAM exercicio_1_3
