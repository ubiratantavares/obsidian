!
! Programa para calcular a �rea de um c�rculo de raio qualquer
!
PROGRAM circulo
    ! Nenhuma declara��o ser� implicita
    IMPLICIT NONE
    ! Declara��o de vari�veis
    REAL :: area, raio
    
    ! Apresenta��o da finalida de do programa
    WRITE (*, *) "Calculo da �rea de um c�rculo:"
    WRITE (*, *)
    ! Solicita��o do raio
    WRITE(*, *) "Informe o raio do circulo: "
    READ (*, *) raio
    ! C�lculo da �rea
    area = 3.14159 * raio ** 2
    ! Sa�da do programa
    WRITE(*, *) "Raio do circulo = ", area
    STOP
END PROGRAM circulo
     