! Este programa calcula a equação do 2º grau
     program equacao
     real b, a, c, x, x1, x2, delta
     a = 4.0
     b = 5.0
     c = 1.0
     delta = b**2 - 4*a*c
     write(*,*) delta
     if (delta) 10, 20, 30
  10 	print*, 'Delta < 0, no real roots'
  		go to 100
  20    x = -b/(2.0*a)
        print*, 'Delta = 0, two equal real roots'
        print*, 'x1 = x2 = ', x
        go to 100
  30    x1 = (-b + sqrt(delta))/(2.0*a)
        x2 = (-b - sqrt(delta))/(2.0*a)
        print*, 'Delta > 0, two different real roots'
        print*, 'x1 = ', x1
        print*, 'x2 = ', x2
 100    stop
        end
               