!
! Programa para verificar se é possível formar um triângulo a partir de três
! segmentos de reta, cujos comprimentos são informados. E, se for possível,
! verificar qual o tipo do triãngulo formado.
!
PROGRAM triangulos
    IMPLICIT NONE
    ! Declaração de variáveis
    REAL :: lado1, lado2, lado3
    
    ! Apresentaçao da finalidade do programa
    WRITE (*, *) "Programa para verificar se é possível formar um triângulo a partir de três"
    WRITE (*, *) "segmentos de reta, cujos comprimentos são informados. E, se for possível,"
    WRITE (*, *) "verificar qual o tipo do triãngulo formado."
    WRITE (*, *)
    ! Obtenção dos dados
    WRITE (*, *) "Informe os comprimentos dos lados do triangulo: "
    READ (*, *) lado1, lado2, lado3
    ! Testa se é triângulo
    IF ((lado1 < lado2 + lado3) .AND. (lado2 < lado1 + lado3) .AND. (lado3 < lado2 + lado1)) THEN
        ! Testa se é eqüilátero
        IF  ((lado1 == lado2) .AND. (lado2 == lado3)) THEN
            WRITE (*, *) "Os valores fornecidos formam um triângulo eqüilátero!"
        !Testa se é isósceles
        ELSE IF ((lado1 == lado2) .OR. (lado2 == lado3) .OR. (lado1 == lado3)) THEN
            WRITE (*, *) "Os valores fornecidos formam um triângulo isósceles!"
        ELSE ! É escaleno
            WRITE (*, *) "Os valores fornecidos formam um triângulo escaleno!"
        END IF
    ELSE
        WRITE (*, *) "Os valores fornecidos não formam um triângulo!"
    END IF
    STOP
END PROGRAM triangulos
