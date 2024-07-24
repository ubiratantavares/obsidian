c     gerador.for
      INTEGER*4 semente
      INTEGER*4 i,a,lamb
      INTEGER*4 n / 20 /   
      INTEGER*4 h(20)
      REAL*4 temp    
      OPEN(6,FILE = 'DADOS.DAT')
      a=5
      lamb=20     
      WRITE(*,*) ' entre com a semente ?'
      READ(*,*) semente
      CALL SEED(semente)
      CALL RANDOM(temp)
      DO i=1,n
          h(i)=NINT(a*SIN(2*3.14*i/lamb))
          WRITE(6,*) i,h(i)
      END DO 
      END
       