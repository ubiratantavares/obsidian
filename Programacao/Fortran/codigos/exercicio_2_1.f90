!
! Exercício 2.1
!
! Programa para calcular e imprimir a energia cinética de uma partícula,
! a partir de suas massa e velocidade
!
PROGRAM calcula_energia_cinetica
   IMPLICIT NONE
   REAL :: massa, velocidade, energia_cinetica

   ! Mostra a finalidade do programa
   WRITE (*, *) "Programa para calcular e imprimir a energia cinética de uma partícula"
   WRITE (*, *)
   ! Solicitação dos dados de entrada
   WRITE (*, *)  "Informe o valor da massa da partícula: "
   READ (*, *) massa
   WRITE (*, *)  "Informe o valor da velocidade da partícula: "
   READ (*, *) velocidade
   ! Cálculo da energia cinetica
   energia_cinetica = massa * velocidade ** 2 / 2
   ! Impressão do resultado do programa
   WRITE (*, *) "Massa da partícula = ", massa
   WRITE (*, *) "Velocidade da partícula = ", velocidade
   WRITE (*, *)
   WRITE (*, *) "Energia Cinética = ", energia_cinetica
   STOP
END PROGRAM calcula_energia_cinetica
