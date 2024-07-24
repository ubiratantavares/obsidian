! Este programa calcula a equacao de segundo grau
     program equacao
     real b, a, c, x, x1, x2, delta
     a = 1
     b = -4
     c = 3
     delta = b**2 - 4*a*c
     write(*,*) delta
     if (delta .lt. 0) then
       print *, 'delta < 0; no real roots'
     else if (delta .eq. 0) then
       x = -b/(2.0*a)
       print *, 'delta = 0; two equal real roots'
       print *, 'x1 = x2 = ', x
          else if (delta .gt. 0) then
            x1 = (-b-sqrt(delta))/(2.0*a)
            x2 = (-b+sqrt(delta))/(2.0*a)
            print *, 'delta > 0; two different real roots'
            print *, 'x1 = ', x1
            print *, 'x2 = ', x2
     endif
     stop
     end
      
        