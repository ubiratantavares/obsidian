     program seno
     parameter (pi = 3.1416)	
     real y, pi
     ! arquivo de saida
     open(12, file='dados.txt', status='new')
     do x=0,360,1
          y = sin(x*pi/180)
          write(12,100) x, y
     end do
 100 format(f8.1, 3x, f8.2 ) 
     close(12)
     stop
     end
     
