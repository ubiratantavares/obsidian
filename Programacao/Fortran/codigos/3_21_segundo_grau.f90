!
! Programa para calcular as raízes reais de uma equacao do segundo grau
! a partir de seus coeficientes (a, b e c) ou avisar que é impossivel
! calculá-las
!
PROGRAM segundo_grau
   IMPLICIT NONE
   REAL :: a, b, c, delta, x1, x2
   
   WRITE (*, *) "Calculo das raizes reais de uma equacao do segundo grau: "
   WRITE (*, *)
   WRITE (*, *) "Informe os oeficientes a, b, e c da equacao do 2o. grau: "
   READ (*, *) a, b, c
   delta = b**2 - 4 * a * c
   IF (delta >= 0) THEN
      x1 = (-b + SQRT(delta)) / 2 * a
      x2 = (-b - SQRT(delta)) / 2 * a
      WRITE (*, *) "Raizes reais: x1 = ", x1, " e x2 = ", x2
   ELSE
      WRITE (*, *) "Nao eh possivel o calculo das raizes reais!"
   END IF
   STOP
END PROGRAM segundo_grau
