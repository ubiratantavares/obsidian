!
! Programa para verificar se � poss�vel formar um tri�ngulo a partir de tr�s
! segmentos de reta, cujos comprimentos s�o informados. E, se for poss�vel,
! verificar qual o tipo do tri�ngulo formado.
!
PROGRAM triangulos
    IMPLICIT NONE
    ! Declara��o de vari�veis
    REAL :: lado1, lado2, lado3
    
    ! Apresenta�ao da finalidade do programa
    WRITE (*, *) "Programa para verificar se � poss�vel formar um tri�ngulo a partir de tr�s"
    WRITE (*, *) "segmentos de reta, cujos comprimentos s�o informados. E, se for poss�vel,"
    WRITE (*, *) "verificar qual o tipo do tri�ngulo formado."
    WRITE (*, *)
    ! Obten��o dos dados
    WRITE (*, *) "Informe os comprimentos dos lados do triangulo: "
    READ (*, *) lado1, lado2, lado3
    ! Testa se � tri�ngulo
    IF ((lado1 < lado2 + lado3) .AND. (lado2 < lado1 + lado3) .AND. (lado3 < lado2 + lado1)) THEN
        ! Testa se � eq�il�tero
        IF  ((lado1 == lado2) .AND. (lado2 == lado3)) THEN
            WRITE (*, *) "Os valores fornecidos formam um tri�ngulo eq�il�tero!"
        !Testa se � is�sceles
        ELSE IF ((lado1 == lado2) .OR. (lado2 == lado3) .OR. (lado1 == lado3)) THEN
            WRITE (*, *) "Os valores fornecidos formam um tri�ngulo is�sceles!"
        ELSE ! � escaleno
            WRITE (*, *) "Os valores fornecidos formam um tri�ngulo escaleno!"
        END IF
    ELSE
        WRITE (*, *) "Os valores fornecidos n�o formam um tri�ngulo!"
    END IF
    STOP
END PROGRAM triangulos
