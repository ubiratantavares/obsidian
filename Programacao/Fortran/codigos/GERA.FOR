C        GERADOR DE NUMERO ALEATORIO;

      integer*4 i, evap , cond
      DOUBLE PRECISION r
      r = 2456213
      cond = 0
      evap = 0
      DO i= 1 , 10
           r = r * 65539 
           IF (r .LT. 0) THEN
               evap = evap + 1           
           ELSE
               cond = cond + 1 
           ENDIF
      ENDDO         
      write(*,*) evap,cond                          
      stop
      end