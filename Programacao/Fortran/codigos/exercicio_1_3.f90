!
! Exercicio 1.3
!
! Calcular a distância entre dois pontos A e B, para as coordenadas:
!
! A = (2, 3)
!
! B = (5, 8)
!
PROGRAM exercicio_1_3

    ! Cálculo da distancia e apresentação dos resultados
    WRITE (*, *) "A distancia entre dois pontos A e B eh ", ((5 - 2)**2 + (8 - 3)**2)**0.5
!   Forma alternativa do cálculo da raiz quadrada, usando a função SQRT()
!   WRITE (*, *) "A distancia entre dois pontos A e B eh ", SQRT((5. - 2)**2 + (8 - 3)**2)
    STOP
END PROGRAM exercicio_1_3
