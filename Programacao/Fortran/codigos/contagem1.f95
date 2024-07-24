! este programa permite observar quando está sendo
! executado o primeiro e o segundo do
     program loop
     implicit none
     integer m, n
     parameter (m=3, n=2)
     integer i, j
     print *, '						  i   	      j '
     do 10 i=1, m
       print *, 'primeiro do ', i
       do 20 j=1, n
         print *, '			segundo do ', i, j
         20 continue
     10 continue
     stop
     end
         