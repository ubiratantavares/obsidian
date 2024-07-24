CC    Declaração das variáveis do programa principal  

      INTEGER*4 semente
      INTEGER*4 i,j,a,lamb
      INTEGER*4 n 
      INTEGER*4 h(20)
      REAL*4 temp 
                       
CC    Abertura dos arquivos de saida de dados
                       
      OPEN(6,FILE = 'SAIDA1.DAT')
      OPEN(8,FILE = 'SAIDA2.DAT') 

CC    Inicialização das variáveis
      
      n=20
      a=5
      lamb=20 
      DO i=1,n
          h(i)=NINT(a*SIN(2*3.14*i/lamb))
          WRITE(6,*) i,h(i)
      END DO   
      
CC    Entrada no programa da semente
      
 
      WRITE(*,*) ' Entre com a semente ?'
      READ(*,*) semente
      CALL SEED(semente) 
      CALL RANDOM(temp)
      DO j=1,10    
          CALL RANDOM(temp)
          i=NINT(temp*n)
          IF (i.EQ.0) THEN
                 i=1
          END IF  
          WRITE(8,*)
          WRITE(8,*) i,h(i)
      END DO
      END