      INTEGER*4 semente
      INTEGER*4 n
      REAL*4 temp
      
      n = 20 
      WRITE(*,*) ' Entre com a semente ?'
      READ(*,*) semente
      CALL SEED(semente)
      DO J = 1 , 20
      CALL RANDOM(temp)
          i = INT(temp * n) + 1
          WRITE(*,*)  temp , i
      END DO
      STOP
      END