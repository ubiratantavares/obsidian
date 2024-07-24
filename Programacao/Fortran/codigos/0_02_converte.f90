!
! Programa que converte graus Farenheit para Celsius
!
PROGRAM converte
    IMPLICIT NONE
    ! Declara��o das vari�veis
    REAL :: farenheit, celsius
   
    ! Apresenta��o da finalidade do programa
    WRITE (*, *) "Convers�o de uma temperatura em graus Farenheit para Celsius:"
    WRITE (*, *)
    ! Obten��o da temperatura em graus Farenheit
    WRITE (*, *) "Informe a temperatura em graus Farenheit: "
    READ (*, *) farenheit
    ! C�lculo da convers�o para Celsius
    celsius = 5/9. * (farenheit - 32)
    ! Apresenta��o do resultado
    WRITE (*, *) "A temperatura em graus Celsius correspondente a ", farenheit, " graus Farenheit � ", celsius
    STOP
END PROGRAM converte
  