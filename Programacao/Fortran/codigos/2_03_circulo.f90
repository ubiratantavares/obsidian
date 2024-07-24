!
! Programa para calcular a área de um círculo de raio qualquer
!
PROGRAM circulo
    ! Nenhuma declaração será implicita
    IMPLICIT NONE
    ! Declaração de variáveis
    REAL :: area, raio
    
    ! Apresentação da finalida de do programa
    WRITE (*, *) "Calculo da área de um círculo:"
    WRITE (*, *)
    ! Solicitação do raio
    WRITE(*, *) "Informe o raio do circulo: "
    READ (*, *) raio
    ! Cálculo da área
    area = 3.14159 * raio ** 2
    ! Saída do programa
    WRITE(*, *) "Raio do circulo = ", area
    STOP
END PROGRAM circulo
     