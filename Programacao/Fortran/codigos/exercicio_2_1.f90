!
! Exerc�cio 2.1
!
! Programa para calcular e imprimir a energia cin�tica de uma part�cula,
! a partir de suas massa e velocidade
!
PROGRAM calcula_energia_cinetica
   IMPLICIT NONE
   REAL :: massa, velocidade, energia_cinetica

   ! Mostra a finalidade do programa
   WRITE (*, *) "Programa para calcular e imprimir a energia cin�tica de uma part�cula"
   WRITE (*, *)
   ! Solicita��o dos dados de entrada
   WRITE (*, *)  "Informe o valor da massa da part�cula: "
   READ (*, *) massa
   WRITE (*, *)  "Informe o valor da velocidade da part�cula: "
   READ (*, *) velocidade
   ! C�lculo da energia cinetica
   energia_cinetica = massa * velocidade ** 2 / 2
   ! Impress�o do resultado do programa
   WRITE (*, *) "Massa da part�cula = ", massa
   WRITE (*, *) "Velocidade da part�cula = ", velocidade
   WRITE (*, *)
   WRITE (*, *) "Energia Cin�tica = ", energia_cinetica
   STOP
END PROGRAM calcula_energia_cinetica
