C     Universidade Federal Fluminense
C     Instituto de Física
C     Departamento de Física
C     Laboratorio Profissional II
C     Física Computacional 
C     Prof: Fábio
C     Aluno: Ubiratan da Silva Tavares
C
C     Programa que simula a deposição aleatoria sobre uma linha
C      
C     ***************************************************************

C     **************** Declaração das variaveis *********************

      INTEGER*4 i , j , l, t , sem , soma1 , soma2
      INTEGER*4 h(1000)   
      REAL*4 temp , w  , agaqm , agam 
        
C     *************** Arquivo de saida dos dados ********************

      OPEN(6,FILE = 'LP2.DAT') 
                                
C     *************** Inicializacao das variáveis *******************
               
      t = 10000       
      l = 400            
      DO i = 1 , l
           h(i) = 0   
      END DO    
      sem = 7867
      
C     *************** Programa Principal ****************************
      
      CALL SEED(sem)  
      DO j = 1 , t       
           soma1 = 0
           soma2 = 0
           CALL RANDOM(temp) 
           i = INT(temp*real(l)) + 1 
           h(i) = h(i) + 1  
           DO i = 1 , l
                  soma1 = soma1 + h(i)*h(i)
                  soma2 = soma2 + h(i)
           END DO       
           agaqm = real(soma1)/real(l)
           agam = real(soma2)/real(l)
           w = agaqm - agam*agam
           write(6,*) j , w**.5 
      END DO
      STOP
      END
C     ***************************************************************     