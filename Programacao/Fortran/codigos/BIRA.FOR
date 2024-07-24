      real*4 temp
      integer*4 eva , cond 
      eva = 0
      cond = 0
      call seed(7531) 
      do i = 1 , 10000
           call random(temp)
           if (temp .LT. .5) then
              eva = eva + 1
           else 
              cond = cond + 1
           endif  
      enddo          
      write(*,*) eva , cond
      stop
      end
      