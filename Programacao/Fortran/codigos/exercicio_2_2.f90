!
! Exercício 2.2
!
! Programa para calcular e imprimir o comprimento da hipotenusa de um triangulo
! retangulo a partir dos comprimentos dos catetos:"
!
PROGRAM calcula_hipotenusa
   IMPLICIT NONE
   REAL :: cateto_a, cateto_b, hipotenusa

   ! Mostra a finalidade do programa
   WRITE (*, *) "Programa para calcular o comprimento da hipotenuza de um triangulo"
   WRITE (*, *) "retangulo a partir dos comprimentos dos catetos:"
   WRITE (*, *)
   ! Solicitação dos dados de entrada
   WRITE (*, *)  "Informe os valores dos catetos a e b: "
   READ (*, *) cateto_a, cateto_b
   ! Cálculo da hipotenuza
   hipotenusa = SQRT(cateto_a ** 2 + cateto_b ** 2)
   ! Impressão do resultado do programa
   WRITE (*, *) "O valor do comprimento do cateto a: ", cateto_a
   WRITE (*, *) "O valor do comprimento do cateto b: ", cateto_b
   WRITE (*, *)
   WRITE (*, *) "O valor calculado do comprimento da hipotenusa: ", hipotenusa
   STOP
END PROGRAM calcula_hipotenusa
