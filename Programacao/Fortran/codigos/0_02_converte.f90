!
! Programa que converte graus Farenheit para Celsius
!
PROGRAM converte
    IMPLICIT NONE
    ! Declaração das variáveis
    REAL :: farenheit, celsius
   
    ! Apresentação da finalidade do programa
    WRITE (*, *) "Conversão de uma temperatura em graus Farenheit para Celsius:"
    WRITE (*, *)
    ! Obtenção da temperatura em graus Farenheit
    WRITE (*, *) "Informe a temperatura em graus Farenheit: "
    READ (*, *) farenheit
    ! Cálculo da conversão para Celsius
    celsius = 5/9. * (farenheit - 32)
    ! Apresentação do resultado
    WRITE (*, *) "A temperatura em graus Celsius correspondente a ", farenheit, " graus Farenheit é ", celsius
    STOP
END PROGRAM converte
  