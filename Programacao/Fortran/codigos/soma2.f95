! O programa calcula a area do circulo com raio r
     program circle
     real r, area, pi
     parameter (pi=3.14159)
     write (*,*) 'Give radius r :' !Escreve na tela o valor de r
     read (*,*) r				   !L� o valor de r
     area = pi*r*r				   !Calcula a �rea e atribui o valor em area
     write (*,*) 'Area = ', area
     stop
     end       
