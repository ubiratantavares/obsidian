c     gerador.for
      INTEGER*4 semente
      INTEGER*4 cont / 20 /
      INTEGER*4 i
      REAL*4 temp      
      WRITE(*,*) ' entre com a semente ?'
      READ(*,*) semente
      CALL SEED(semente)
      DO i=1,cont
          CALL RANDOM(temp)
          WRITE(*,*) temp
      END DO
      END
       